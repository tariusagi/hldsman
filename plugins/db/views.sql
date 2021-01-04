/* vim: set filetype=mysql : */
/* vim: set foldmethod=marker : */
/* ----------------------------------------------------------------------------
Written by vuluuphuong@gmail.com
----------------------------------------------------------------------------- */
DELIMITER ;
/*
An offline server must be active and has its launch time be NULL.
*/
SELECT 'Creating view cs_offline_servers...' AS `action`;
DROP VIEW IF EXISTS cs_offline_servers;
CREATE VIEW cs_offline_servers AS
	SELECT *
	FROM cs_servers
	WHERE active AND launch_time IS NULL;
/*
An online server must be active and has its launch time defined.
*/
SELECT 'Creating view cs_online_servers...' AS `action`;
DROP VIEW IF EXISTS cs_online_servers;
CREATE VIEW cs_online_servers AS
	SELECT *
	FROM cs_servers
	WHERE active AND launch_time IS NOT NULL;
/*
A dead server has its last breath longer than 60 seconds from now.
Inactive servers do not count.
*/
SELECT 'Creating view cs_dead_servers...' AS `action`;
DROP VIEW IF EXISTS cs_dead_servers;
CREATE VIEW cs_dead_servers AS
	SELECT *
	FROM cs_servers
	WHERE active AND launch_time IS NOT NULL 
		AND TIME_TO_SEC(TIMEDIFF(NOW(), last_breath)) > 60;
/*
*/
SELECT 'Creating view cs_active_users...' AS `action`;
DROP VIEW IF EXISTS cs_active_users;
CREATE VIEW cs_active_users AS
	SELECT *
	FROM cs_users
	WHERE played_length
	ORDER BY name;
/*
*/
SELECT 'Creating view cs_online_users...' AS `action`;
DROP VIEW IF EXISTS cs_online_users;
CREATE VIEW cs_online_users AS
	SELECT 
		b.name AS server_name,
		a.*
	FROM cs_users a JOIN cs_servers b ON (a.server_id = b.id)
	WHERE TIME_TO_SEC(TIMEDIFF(NOW(), a.last_breath)) < 2 * b.breath_lap
		ORDER BY a.name;
/*
*/
SELECT 'Creating view cs_dead_users...' AS `action`;
DROP VIEW IF EXISTS cs_dead_users;
CREATE VIEW cs_dead_users AS
	SELECT 
		b.name AS server_name,
		a.*
	FROM cs_users a JOIN cs_servers b ON (a.server_id = b.id) 
	WHERE TIME_TO_SEC(TIMEDIFF(NOW(), a.last_breath)) > 2 * b.breath_lap
		ORDER BY a.name;
/*
A view of users records using phpBB3 schema.
*/
/*SELECT 'Creating view cs_phpbb_users...' AS `action`;
DROP VIEW IF EXISTS cs_phpbb_users;
CREATE VIEW cs_phpbb_users AS
	SELECT a.user_id AS id,
		a.username AS name,
		a.user_md5pwd AS password,
		FROM_UNIXTIME(a.user_regdate) AS regdate,
		(SELECT GROUP_CONCAT(group_id ORDER BY group_id)
			FROM phpbb.phpbb_user_group
			WHERE user_id = a.user_id) AS role_ids
	FROM phpbb.phpbb_users a;*/
