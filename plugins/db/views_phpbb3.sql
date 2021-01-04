/* vim: set filetype=mysql : */
/* vim: set foldmethod=marker : */
/* ----------------------------------------------------------------------------
Written by vuluuphuong@gmail.com
----------------------------------------------------------------------------- */
DELIMITER ;
/*
A view of users records using phpBB3 schema.
*/
SELECT 'Creating view cs_phpbb_users...' AS `action`;
DROP VIEW IF EXISTS cs_phpbb_users;
CREATE VIEW cs_phpbb_users AS
	SELECT a.user_id AS id,
		a.username AS name,
		a.user_md5pwd AS password,
		FROM_UNIXTIME(a.user_regdate) AS regdate,
		(SELECT GROUP_CONCAT(group_id ORDER BY group_id)
			FROM phpbb.phpbb_user_group
			WHERE user_id = a.user_id) AS role_ids
	FROM phpbb.phpbb_users a;
