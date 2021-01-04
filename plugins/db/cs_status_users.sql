-- This is an optimized version of Tho's original view.
DROP VIEW IF EXISTS cs_status_users;
CREATE VIEW cs_status_users
AS SELECT
	a.id AS id,
	a.name AS name,
	a.active + 1 AS active,
	GROUP_CONCAT(c.role_id) AS role_ids, 
	IF(b.duration IS NULL AND a.lock_id IS NOT NULL, 2, 1) AS `lock`,
	IF(b.duration IS NOT NULL AND a.lock_id IS NOT NULL AND DATEDIFF(NOW(), b.moment) < b.duration, 2, 1) AS hang 
FROM (cs_users a LEFT JOIN cs_locks b ON a.lock_id = b.id) LEFT JOIN cs_roles c ON a.id = c.user_id
GROUP BY a.id;
