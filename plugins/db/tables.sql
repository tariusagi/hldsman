/* vim: set filetype=mysql : */
/* vim: set foldmethod=marker : */
/* ----------------------------------------------------------------------------
Written by vuluuphuong@gmail.com
----------------------------------------------------------------------------- */
DELIMITER ;
/*----------------------------------------------------------------------------*/
SELECT 'Creating table cs_settings...' AS action;
DROP TABLE IF EXISTS cs_settings;
CREATE TABLE cs_settings (
	name VARCHAR(32) NOT NULL,
	value VARCHAR(200) NULL,
	description VARCHAR(200) NULL,
	PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '';
/*----------------------------------------------------------------------------*/
SELECT 'Creating table cs_server_types...' AS action;
DROP TABLE IF EXISTS cs_server_types;
CREATE TABLE cs_server_types (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(32) NOT NULL,
	info TEXT NULL,
	servercfg VARCHAR(32) NULL COMMENT 'HLDS servercfgfile option. NULL implies server.cfg',
	mapcycle VARCHAR(32) NULL COMMENT 'HLDS mapcyclefile option. NULL impilies mapcycle.txt',
	plugins VARCHAR(32) NULL COMMENT 'AMX Mod X plugins list. NULL impilies plugins.cfg',
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '';
/*----------------------------------------------------------------------------*/
SELECT 'Creating table cs_servers...' AS action;
DROP TABLE IF EXISTS cs_servers;
CREATE TABLE cs_servers (
	id INT NOT NULL AUTO_INCREMENT,
	active BOOL NOT NULL DEFAULT TRUE,
	type INT NOT NULL COMMENT 'Server type, see table cs_server_types',
	name VARCHAR(32) NOT NULL,
	host VARCHAR(32) NOT NULL,
	port INT NOT NULL,
	server_root VARCHAR(200) NULL COMMENT 'Root of the HLDS (where the hlds_run is located)',
	runas VARCHAR(32) NULL COMMENT 'The systerm user who run the server',
	cmd_options VARCHAR(200) NULL,
	slots INT NOT NULL DEFAULT 16 COMMENT 'Normal slots',
	vip_slots INT NOT NULL DEFAULT 4 COMMENT 'VIP slots',
	mod_slots INT NOT NULL DEFAULT 1 COMMENT 'Moderators slots',
	admin_slots INT NOT NULL DEFAULT 1 COMMENT 'Administrator slots',
	first_map VARCHAR(32) NOT NULL,
	free_play BOOL NOT NULL DEFAULT FALSE,
	/* Runtime data */
	pid INT NULL COMMENT 'The program ID of the main HLDS process (hlds_run in Linux/hlds in Windows)',
	u5_version VARCHAR(8) NULL COMMENT 'unifires.amx version',
	launch_time DATETIME NULL COMMENT 'Time when this server was launched',
	last_breath DATETIME NULL COMMENT 'Last time this server was reported alive',
	breath_lap INT NOT NULL DEFAULT 30 COMMENT 'Seconds between breaths',
	pwd VARCHAR(32) COMMENT 'sv_password',
	rcon VARCHAR(32) COMMENT 'rcon_password',
	map VARCHAR(32) NULL COMMENT 'Current map',
	map_start DATETIME NULL COMMENT 'Time when the current map was started',
	map_time INT NOT NULL DEFAULT 30 COMMENT 'Length (in minutes) of the current map',
	cmd VARCHAR(200) NULL,
	runtime_changed BOOL NOT NULL DEFAULT FALSE,
	/* Statistics */
	lives INT NOT NULL DEFAULT 0,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '';
/*----------------------------------------------------------------------------*/
SELECT 'Creating table cs_users...' AS action;
DROP TABLE IF EXISTS cs_users;
CREATE TABLE cs_users(
	/* Core info. */
	id INT NOT NULL,
	name VARCHAR(32) NOT NULL,
	password CHAR(32) NULL,
	regdate DATETIME NOT NULL,
	active BOOL NOT NULL DEFAULT FALSE,
	lock_id INT NULL COMMENT 'ID of the lock in cs_locks',
	/* Runtime data */
	server_id INT NULL COMMENT 'The server in which this user is playing',
	fake_name VARCHAR(32) NULL,
	tag CHAR(16) DEFAULT NULL COMMENT 'Tag will be prepended to user name.',
	tail CHAR(16) DEFAULT NULL COMMENT 'Tail will be appended to user name',
	check_in DATETIME NULL,
	last_breath DATETIME NULL COMMENT 'Last time this user was reported alive',
	/* Gaming statistics */
	hits INT NOT NULL DEFAULT 0,
	head_hits INT NOT NULL DEFAULT 0,
	chest_hits INT NOT NULL DEFAULT 0,
	left_arm_hits INT NOT NULL DEFAULT 0,
	right_arm_hits INT NOT NULL DEFAULT 0,
	stomach_hits INT NOT NULL DEFAULT 0,
	left_leg_hits INT NOT NULL DEFAULT 0,
	right_leg_hits INT NOT NULL DEFAULT 0,
	damages INT NOT NULL DEFAULT 0,
	frags INT NOT NULL DEFAULT 0,
	deaths INT NOT NULL DEFAULT 0,
	head_frags INT NOT NULL DEFAULT 0 COMMENT 'Frags by headshots',
	knife_frags INT NOT NULL DEFAULT 0 COMMENT 'Frags by knives',
	he_frags INT NOT NULL DEFAULT 0 COMMENT 'Frags by HE',
	head_deaths INT NOT NULL DEFAULT 0 COMMENT 'Deaths by headshots',
	knife_deaths INT NOT NULL DEFAULT 0 COMMENT 'Deaths by knives',
	he_deaths INT NOT NULL DEFAULT 0 COMMENT 'Deaths by HE',
	tk INT NOT NULL DEFAULT 0 COMMENT 'Number of teammates who were killed by this user',
	tked INT NOT NULL DEFAULT 0 COMMENT 'Times that this user was killed by his teammates',
	suicides INT NOT NULL DEFAULT 0,
	falls INT NOT NULL DEFAULT 0 COMMENT 'Deaths by falling off the ground',
	c4_planted INT NOT NULL DEFAULT 0,
	c4_defused INT NOT NULL DEFAULT 0,
	c4_exploded INT NOT NULL DEFAULT 0,
	hostages_rescued INT NOT NULL DEFAULT 0,
	hostages_killed INT NOT NULL DEFAULT 0,
	vip_promoted INT NOT NULL DEFAULT 0 COMMENT 'Number of times played as a VIP', 
	vip_escapes INT NOT NULL DEFAULT 0,
	vip_kills INT NOT NULL DEFAULT 0,
	wins INT NOT NULL DEFAULT 0,
	loses INT NOT NULL DEFAULT 0,
	ct_wins INT NOT NULL DEFAULT 0,
	ct_loses INT NOT NULL DEFAULT 0,
	t_wins INT NOT NULL DEFAULT 0,
	t_loses INT NOT NULL DEFAULT 0,
	played_length INT NOT NULL DEFAULT 0 COMMENT 'Total played time (seconds)',
	PRIMARY KEY (id)
	INDEX (active, lock_id, regdate)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '';
/*----------------------------------------------------------------------------*/
SELECT 'Creating table cs_locks...' AS action;
DROP TABLE IF EXISTS cs_locks;
CREATE TABLE cs_locks (
	id INT NOT NULL AUTO_INCREMENT,
	user_id INT NOT NULL,
	judge_id INT NOT NULL,
	reason VARCHAR(64) NOT NULL,
	server_id INT NULL,
	moment TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	duration INT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '';
