/* vim: set filetype=mysql : */
/* vim: set foldmethod=marker : */
/*=============================================================================
ONLY RUN THIS SQL SCRIPT DURING DATABASE INITIALIZATION.
Written by vuluuphuong@gmail.com
=============================================================================*/
-- Global settings.
SELECT 'Filling table cs_settings...' AS `action`;
TRUNCATE TABLE cs_settings;

INSERT INTO cs_settings(name, value) VALUES ('auth_method', 'password');
INSERT INTO cs_settings(name, value) VALUES ('auth_field', 'cyzone');

INSERT INTO cs_settings(name, value) VALUES ('role_user_id', '2');
INSERT INTO cs_settings(name, value) VALUES ('role_admin_id', '7');
INSERT INTO cs_settings(name, value) VALUES ('role_mod_id', '9');
INSERT INTO cs_settings(name, value) VALUES ('role_vip_id', '10');

INSERT INTO cs_settings(name, value) VALUES ('role_user_amx', 'z');
INSERT INTO cs_settings(name, value) VALUES ('role_admin_amx', 'abcdefghijklmu');
INSERT INTO cs_settings(name, value) VALUES ('role_mod_amx', 'bcdefhijmu');
INSERT INTO cs_settings(name, value) VALUES ('role_vip_amx', 'bz');

INSERT INTO cs_settings(name, value, description) VALUES ('reg_delay', '3', 'Activation delay (after registration) in days');
INSERT INTO cs_settings(name, value, description) VALUES ('reg_delay_start', '2009-01-01', 'The day activation delay starts');

-- Server types.
SELECT 'Filling table cs_server_types...' AS `action`;
TRUNCATE TABLE cs_server_types;
INSERT INTO cs_server_types(id, name)
	VALUES (1, 'Classic');
INSERT INTO cs_server_types(id, name, plugins)
	VALUES (2, 'Match', 'plugins_m.ini');
INSERT INTO cs_server_types(id, name, plugins)
	VALUES (3, 'Death Match', 'plugins_dm.ini');
INSERT INTO cs_server_types(id, name, mapcycle, plugins)
	VALUES (4, 'Zombie Plague', 'mapcycle_zp.txt', 'plugins_zp.ini');
INSERT INTO cs_server_types(id, name, mapcycle, plugins)
	VALUES (5, 'Hostage', 'mapcycle_cs.txt', 'plugins_cs.ini');
INSERT INTO cs_server_types(id, name, mapcycle, plugins)
	VALUES (6, 'Assasin', 'mapcycle_as.txt', 'plugins_as.ini');
INSERT INTO cs_server_types(id, name, plugins)
	VALUES (7, 'Classic Test', 'plugins_test.ini');

