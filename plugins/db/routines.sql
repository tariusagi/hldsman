/* vim: set filetype=mysql : */ 
/* vim: set foldmethod=marker : */

/* ============================================================================
Created by Uzi, vuluuphuong@gmail.com
============================================================================ */
/* The following assignment will get rid of MySQL error 1418 */
-- SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER $$

/* Utilities {{{*/
/*
Show tables.
*/
DROP PROCEDURE IF EXISTS show_tables; $$
SELECT 'Creating show_tables...' AS action$$
CREATE PROCEDURE show_tables(_pattern VARCHAR(32))
BEGIN
	SELECT table_name
	FROM information_schema.tables
	WHERE table_schema = DATABASE()
		AND table_type != 'VIEW'
		AND (_pattern IS NULL OR table_name LIKE _pattern)
	ORDER BY table_name ASC;
END $$
/*
Show views.
*/
DROP PROCEDURE IF EXISTS show_views; $$
SELECT 'Creating show_views...' AS action$$
CREATE PROCEDURE show_views(_pattern VARCHAR(32))
BEGIN
	SELECT table_name
	FROM information_schema.tables
	WHERE table_schema = DATABASE()
		AND table_type = 'VIEW'
		AND (_pattern IS NULL OR table_name LIKE _pattern)
	ORDER BY table_name ASC;
END $$
/*
Show stored procedures.
*/
DROP PROCEDURE IF EXISTS show_sp; $$
SELECT 'Creating show_sp...' AS action$$
CREATE PROCEDURE show_sp(_pattern VARCHAR(32))
BEGIN
	SELECT routine_name
	FROM information_schema.routines
	WHERE routine_schema = DATABASE()
		AND routine_type = 'PROCEDURE'
		AND (_pattern IS NULL OR routine_name LIKE _pattern)
	ORDER BY routine_name ASC;
END $$
/*
Show stored functions.
*/
DROP PROCEDURE IF EXISTS show_sf; $$
SELECT 'Creating show_sf...' AS action$$
CREATE PROCEDURE show_sf(_pattern VARCHAR(32))
BEGIN
	SELECT routine_name
	FROM information_schema.routines
	WHERE routine_schema = DATABASE()
		AND routine_type = 'FUNCTION'
		AND (_pattern IS NULL OR routine_name LIKE _pattern)
	ORDER BY routine_name ASC;
END $$
/*
Propagate user records from phpbb database.
*/
DROP PROCEDURE IF EXISTS cs_update_from_phpbb; $$
SELECT 'Creating cs_update_from_phpbb...' AS action$$
CREATE PROCEDURE cs_update_from_phpbb()
BEGIN
	-- Add missing records.
	INSERT INTO cs_users(id, name, password, role_ids, regdate)
	SELECT *
	FROM cs_phpbb_users
	WHERE id NOT IN (SELECT id FROM cs_users);

	-- Update modified records.
	UPDATE cs_users a, cs_phpbb_users b
	SET a.name = b.name,
		a.password = b.password,
		a.role_ids = b.role_ids,
		a.regdate = b.regdate
	WHERE a.id = b.id
		AND (a.name <> b.name
			OR a.password <> b.password
			OR a.role_ids <> b.role_ids
			OR a.regdate <> b.regdate);
END $$
/*
Propagate user records from master user database (fg_member.mb_users).
*/
DROP PROCEDURE IF EXISTS cs_update_users; $$
SELECT 'Creating cs_update_users...' AS action$$
CREATE PROCEDURE cs_update_users()
BEGIN
	-- Add missing records from master user database (fg_member).
	INSERT INTO cs_users(id, name, password, regdate, active)
	SELECT id, account, MD5(backup), CONVERT(join_date, DATETIME), active
	FROM fg_member.mb_users
	WHERE id NOT IN (SELECT id FROM cs_users);

	-- Update modified records (user name, password, activation).
	UPDATE cs_users a, fg_member.mb_users b
	SET a.name = b.account,
		a.password = MD5(b.backup),
		a.active = b.active
	WHERE a.id = b.id
		AND (a.name <> b.account
			OR (b.backup IS NOT NULL AND a.password IS NULL OR a.password <> MD5(b.backup))
			OR a.active <> b.active);
END $$
/*}}}*/
/* Server {{{*/
/*
Clean up dead servers, zombies, orphans...
*/
DROP PROCEDURE IF EXISTS cs_clean_up$$
SELECT 'Creating cs_clean_up...' AS action$$
CREATE PROCEDURE cs_clean_up()
BEGIN
	DECLARE _id INT;
	DECLARE _name VARCHAR(32);
	DECLARE _done BOOL DEFAULT FALSE;

	DECLARE _dead_servers_cursor CURSOR FOR
		SELECT id, name
		FROM cs_dead_servers;

	DECLARE _dead_users_cursor CURSOR FOR
		SELECT id, name
		FROM cs_dead_users;

	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET _done = TRUE;

	-- Clean up dead servers.
	OPEN _dead_servers_cursor;
	SET _done = FALSE;
	REPEAT
		FETCH _dead_servers_cursor INTO _id, _name;
		IF NOT _done THEN
			CALL cs_srv_end(_id);
		END IF;
	UNTIL _done END REPEAT;
	CLOSE _dead_servers_cursor;

	-- Clean up dead servers.
	OPEN _dead_users_cursor;
	SET _done = FALSE;
	REPEAT
		FETCH _dead_users_cursor INTO _id, _name;
		IF NOT _done THEN
			CALL cs_user_out(_id);
		END IF;
	UNTIL _done END REPEAT;
	CLOSE _dead_users_cursor;
END $$

DROP PROCEDURE IF EXISTS cs_srv_start$$
SELECT 'Creating cs_srv_start...' AS action$$
CREATE PROCEDURE cs_srv_start(_id INT)
BEGIN
	IF EXISTS(SELECT id FROM cs_offline_servers WHERE id = _id) THEN
		UPDATE cs_servers
		SET launch_time = NOW(),
			last_breath = NOW(),
			lives = lives + 1
		WHERE id = _id;
	ELSE
		SELECT 'Invalid server ID' AS error;
	END IF;
END $$

DROP PROCEDURE IF EXISTS cs_srv_end$$
SELECT 'Creating cs_srv_end...' AS action$$
CREATE PROCEDURE cs_srv_end(_id INT)
BEGIN
	IF EXISTS(SELECT id FROM cs_online_servers WHERE id = _id) THEN
		UPDATE cs_servers
		SET launch_time = NULL
		WHERE id = _id;
	ELSE
		SELECT 'Invalid server ID' AS error;
	END IF;
END $$

DROP PROCEDURE IF EXISTS cs_srv_breath$$
SELECT 'Creating cs_srv_breath...' AS action$$
CREATE PROCEDURE cs_srv_breath(_id INT)
BEGIN
	DECLARE _runtime_changed BOOL DEFAULT FALSE;
	DECLARE _cmd VARCHAR(200) DEFAULT NULL;

	UPDATE cs_servers
	SET last_breath = NOW() 
	WHERE id = _id;

	SELECT runtime_changed, cmd
	INTO _runtime_changed, _cmd
	FROM cs_servers
	WHERE id = _id;

	IF _runtime_changed THEN
		UPDATE cs_servers
		SET runtime_changed = FALSE
		WHERE id = _id;

		SELECT 'runtime' AS `change`, 
			cs_servers.*
		FROM cs_servers
		WHERE id = _id;
	ELSEIF _cmd IS NOT NULL THEN
		UPDATE cs_servers
		SET cmd = NULL 
		WHERE id = _id;

		SELECT 'cmd' AS `change`,
			_cmd AS cmd;
	END IF;
END $$
/*}}}*/
/* User {{{*/
DROP FUNCTION IF EXISTS cs_base_name$$
SELECT 'Creating cs_base_name...' AS action$$
CREATE FUNCTION cs_base_name(_name VARCHAR(32))
RETURNS VARCHAR(32)
BEGIN
	DECLARE _base_name VARCHAR(32);
	DECLARE _tag_delim VARCHAR(3) DEFAULT ' - ';
	DECLARE _tail_delim VARCHAR(3) DEFAULT ' < ';
	DECLARE _start INT;
	DECLARE _end INT;

	SET _start = INSTR(_name, _tag_delim);

	IF _start > 0 THEN
		SET _start = _start + CHAR_LENGTH(_tag_delim);
	END IF;

	SET _base_name = SUBSTR(_name, IF(_start > 0, _start, 1));

	SET _end = INSTR(_base_name, _tail_delim);

	IF _end > 0 THEN
		SET _base_name = LEFT(_base_name, _end);
	END IF;

	RETURN _base_name;
END $$

DROP PROCEDURE IF EXISTS cs_user_in$$
SELECT 'Creating cs_user_in...' AS action$$
CREATE PROCEDURE cs_user_in(_name VARCHAR(32), _password VARCHAR(32), _server_id INT)
MAIN:
BEGIN
	DECLARE _id INT;
	DECLARE _regdate DATETIME;
	DECLARE _active BOOL;
	DECLARE _lock_id INT;
	DECLARE _server_id2 INT;
	DECLARE _multi BOOL;
	DECLARE _reg_delay INT;
	DECLARE _lock_moment DATETIME;
	DECLARE _lock_duration INT;

	DECLARE CONTINUE HANDLER FOR 1172 SET _multi = TRUE;

	SET _name = cs_base_name(_name);
	SET _password = MD5(_password);

	SELECT id, regdate, active, lock_id, server_id
	INTO _id, _regdate, _active, _lock_id, _server_id2
	FROM cs_users
	WHERE LOWER(name) = LOWER(_name) AND password = _password;
	
	IF _multi THEN
		SELECT 2 AS error,
			'Nick bi trung lap' AS error_msg;
		LEAVE MAIN;
	END IF;

	IF _id IS NULL THEN
		-- Try fake name.
		SELECT id, regdate, active, lock_id, server_id
		INTO _id, _regdate, _active, _lock_id, _server_id2
		FROM cs_users
		WHERE LOWER(fake_name) = LOWER(_name) AND password = _password;

		IF _id IS NULL THEN
			SELECT 3 AS error,
				'Sai nick hoac mat khau. Xin kiem tra tai member.cyzone.vn' AS error_msg;
			LEAVE MAIN;
		END IF;
	END IF;

	SELECT CONVERT(value, DECIMAL)
	INTO _reg_delay
	FROM cs_settings
	WHERE name = 'reg_delay';

	IF NOT _active THEN
		SELECT 7 AS error,
			'Tai khoan chua duoc kick hoat' AS error_msg;
		LEAVE MAIN;
	END IF;

	IF DATEDIFF(NOW(), _regdate) < _reg_delay THEN
		SELECT 8 AS error,
			CONCAT('Ban phai doi them ', _reg_delay - DATEDIFF(NOW(), _regdate), ' ngay nua de choi') AS error_msg;
			LEAVE MAIN;
		END IF;

	IF _lock_id IS NOT NULL THEN
		SELECT moment, duration
		INTO _lock_moment, _lock_duration
		FROM cs_locks
		WHERE id = _lock_id;

		IF _lock_duration IS NULL THEN 
			SELECT 5 AS error,
				CONCAT('Bi khoa nick boi ', b.name, ' vi ', a.reason) AS error_msg
			FROM cs_locks a JOIN cs_users b ON a.judge_id = b.id AND a.id = _lock_id;
			LEAVE MAIN;
		ELSEIF DATEDIFF(NOW(), _lock_moment) < _lock_duration THEN
			SELECT 5 AS error,
				CONCAT('Bi treo nick boi ',
					b.name, ' vi ', a.reason, '. Het han sau ',
					_lock_duration - DATEDIFF(NOW(), _lock_moment),
					' ngay nua.') AS error_msg
			FROM cs_locks a JOIN cs_users b ON a.judge_id = b.id AND a.id = _lock_id;
			LEAVE MAIN;
		ELSE
			CALL cs_user_unlock(_id);
		END IF;
	END IF;

	IF _server_id2 IS NOT NULL THEN
		SELECT 6 AS error,
			CONCAT('Nick nay dang choi tren ', name,'. Nen cho 15 giay roi thu lai') AS error_msg
		FROM cs_servers
		WHERE id = _server_id2;

		LEAVE MAIN;
	END IF;

	UPDATE cs_users
	SET server_id = _server_id,
		check_in = NOW(),
		last_breath = NOW()
	WHERE id = _id;

	SELECT *, cs_get_roles(id) AS role_ids
	FROM cs_users
	WHERE id = _id;
END$$

DROP PROCEDURE IF EXISTS cs_user_out$$
SELECT 'Creating cs_user_out...' AS action$$
CREATE PROCEDURE cs_user_out(_id INT)
MAIN:
BEGIN
	IF EXISTS(SELECT id FROM cs_users WHERE id = _id AND server_id IS NOT NULL) THEN
		UPDATE cs_users
		SET server_id = NULL,
			played_length = played_length + TIME_TO_SEC(TIMEDIFF(NOW(), check_in)),
			check_in = NULL
		WHERE id = _id;
	ELSE
		SELECT 1 AS error,
			'Nick dang offline' AS error_msg;
	END IF;
END $$

DROP PROCEDURE IF EXISTS cs_user_lock$$
SELECT 'Creating cs_user_lock...' AS action$$
CREATE PROCEDURE cs_user_lock(_id INT, _judge_id INT, _reason VARCHAR(64), _server_id INT)
MAIN:
BEGIN
	IF NOT EXISTS(SELECT id FROM cs_users WHERE id = _id) THEN
		SELECT 1 AS error,
			'Doi tuong khong ton tai' AS error_msg;
		LEAVE MAIN;
	END IF;

	IF NOT EXISTS(SELECT id FROM cs_users WHERE id = _judge_id) THEN
		SELECT 2 AS error,
			'Admin/mod khong ton tai' AS error_msg;
		LEAVE MAIN;
	END IF;

	IF _server_id IS NOT NULL AND NOT EXISTS(SELECT id FROM cs_servers WHERE id = _server_id) THEN
		SELECT 3 AS error,
			'Server khong ton tai' AS error_msg;
		LEAVE MAIN;
	END IF;

	INSERT INTO cs_locks(user_id, judge_id, reason, server_id)
	VALUES (_id, _judge_id, _reason, _server_id);

	UPDATE cs_users
	SET lock_id = LAST_INSERT_ID()
	WHERE id = _id;
END $$

DROP PROCEDURE IF EXISTS cs_user_hang$$
SELECT 'Creating cs_user_hang...' AS action$$
CREATE PROCEDURE cs_user_hang(_id INT, _judge_id INT, _reason VARCHAR(64), _server_id INT, _duration INT)
MAIN:
BEGIN
	IF NOT EXISTS(SELECT id FROM cs_users WHERE id = _id) THEN
		SELECT 1 AS error,
			'Doi tuong khong ton tai' AS error_msg;
		LEAVE MAIN;
	END IF;

	IF NOT EXISTS(SELECT id FROM cs_users WHERE id = _judge_id) THEN
		SELECT 2 AS error,
			'Admin/mod khong ton tai' AS error_msg;
		LEAVE MAIN;
	END IF;

	IF _server_id IS NOT NULL AND NOT EXISTS(SELECT id FROM cs_servers WHERE id = _server_id) THEN
		SELECT 3 AS error,
			'Server khong ton tai' AS error_msg;
		LEAVE MAIN;
	END IF;

	INSERT INTO cs_locks(user_id, judge_id, reason, server_id, duration)
	VALUES (_id, _judge_id, _reason, _server_id, _duration);

	UPDATE cs_users
	SET lock_id = LAST_INSERT_ID()
	WHERE id = _id;
END $$

DROP PROCEDURE IF EXISTS cs_user_unlock$$
SELECT 'Creating cs_user_unlock...' AS action$$
CREATE PROCEDURE cs_user_unlock(_id INT)
MAIN:
BEGIN
	IF NOT EXISTS(SELECT id FROM cs_users WHERE id = _id) THEN
		SELECT 1 AS error,
			'Doi tuong khong ton tai' AS error_msg;
		LEAVE MAIN;
	END IF;

	UPDATE cs_users
	SET lock_id = NULL
	WHERE id = _id;
END $$

DROP PROCEDURE IF EXISTS cs_user_breath$$
SELECT 'Creating cs_user_breath...' AS action$$
CREATE PROCEDURE cs_user_breath(_info VARCHAR(224))
BEGIN
	DECLARE _id_str VARCHAR(7);
	DECLARE _id INT;
	DECLARE _start INT;
	DECLARE _report VARCHAR(224) DEFAULT '';

	SET _start = 1;

	REPEAT
		SET _id_str = MID(_info, _start, LOCATE(',', _info, _start) - _start);
		IF LENGTH(_id_str) THEN
			SET _start = _start + LENGTH(_id_str) + 1;
			SET _id = NULL;
			SET _id = CAST(_id_str AS DECIMAL);

			IF _id IS NOT NULL THEN
				SET _report = CONCAT(_report, '-', _id);

				UPDATE cs_users
				SET last_breath = NOW()
				WHERE id = _id AND server_id IS NOT NULL;
			END IF;
		END IF;
	UNTIL LENGTH(_id_str) = 0
	END REPEAT;

	SELECT _report AS report;
END $$
/*}}}*/
DELIMITER ;
