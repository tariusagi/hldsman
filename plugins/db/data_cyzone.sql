/* vim: set filetype=mysql : */
/* vim: set foldmethod=marker : */
/*=============================================================================
Make any modification neccessary and run this script to configure your CS 
servers.
Written by vuluuphuong@gmail.com
=============================================================================*/
-- Global settings.
UPDATE cs_settings SET value = 'cyzone' WHERE name = 'auth_field';
UPDATE cs_settings SET value = '2' WHERE name = 'role_user_id';
UPDATE cs_settings SET value = '7' WHERE name = 'role_admin_id';
UPDATE cs_settings SET value = '9' WHERE name = 'role_mod_id';
UPDATE cs_settings SET value = '10' WHERE name = 'role_vip_id';

UPDATE cs_settings SET value = '2009-01-20' WHERE name = 'reg_delay_start';
-- Servers.
SELECT 'Filling table cs_servers...' AS `action`;
TRUNCATE TABLE cs_servers;
-- Classic servers.
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (1, 'Cyzone Classic 1', '203.128.246.121', 27101, 'de_dust2'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (1, 'Cyzone Classic 2', '203.128.246.121', 27102, 'de_inferno'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (1, 'Cyzone Classic 3', '203.128.246.121', 27103, 'de_train'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (1, 'Cyzone Classic 4', '203.128.246.121', 27104, 'de_nuke'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (1, 'Cyzone Classic 5', '203.128.246.121', 27105, 'de_train'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (1, 'Cyzone Classic 6', '203.128.246.121', 27106, 'de_nuke'); 
-- Match servers.
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Match 1', '203.128.246.121', 27201, 'de_dust2'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Match 2', '203.128.246.121', 27202, 'de_inferno'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Match 3', '203.128.246.121', 27203, 'de_train'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Match 4', '203.128.246.121', 27204, 'de_nuke'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Match 5', '203.128.246.121', 27205, 'de_dust2'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Match 6', '203.128.246.121', 27206, 'de_dust2'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Free Match 1', '203.128.246.121', 27207, 'de_dust2'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Free Match 2', '203.128.246.121', 27208, 'de_dust2'); 
-- Deathmatch servers.
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (3, 'Cyzone Death Match 1', '203.128.246.121', 27301, 'de_dust2'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (3, 'Cyzone Death Match 2', '203.128.246.121', 27302, 'de_inferno'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (3, 'Cyzone Death Match 3', '203.128.246.121', 27303, 'de_train'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (3, 'Cyzone Death Match 4', '203.128.246.121', 27304, 'de_nuke'); 
-- Zombie servers.
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (4, 'Cyzone Zombie 1', '203.128.246.121', 27401, 'de_dust2'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (4, 'Cyzone Zombie 2', '203.128.246.121', 27402, 'de_train'); 
-- Test server.
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (7, 'Cyzone Test Server', '203.128.246.121', 27001, 'de_dust2'); 
-- Steam servers.
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Steam Match 1', '203.128.246.121', 27209, 'de_dust2'); 
INSERT INTO cs_servers(`type`, name, host, port, first_map)
	VALUES (2, 'Cyzone Steam Match 2', '203.128.246.121', 27210, 'de_dust2'); 
-- Add extra options.
UPDATE cs_servers SET cmd_options = '-nomaster +sv_lan 1 -pingboost 3', slots = 20, breath_lap = 15;
UPDATE cs_servers SET server_root = '/home/cyzone/hlds', runas = 'cyzone';
