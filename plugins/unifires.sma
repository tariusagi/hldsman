/* File headers {{{*/
/* vim: set filetype=pawn : */
/* vim: set foldmethod=marker : */
/*
	INSTALLATION GUIDE:
	1. Set the following CVARs:
		amxx.cfg
			amx_mode 0
			amx_reservation 0
			amx_hideslots 0

	2. Add "+localinfo u5_cfg <config_file>" to tell this plugin to get its
	   CVARs from <config_file> instead of the default "unifires.cfg" file.

	3. Add "+localinfo svr_id <n>" to tell this plugin its ID.
}}}*/
/* Globals {{{*/
/* Includes & pragmas {{{2*/
#include <amxmodx>
#include <amxmisc>
#include <sqlx>
#include <cstrike>
#include <csx>
#include <fun>
#include <fakemeta>
#include <hamsandwich>
#include <sorting>
#include "include/fakemeta_util"
#include "include/array"
#include "version"

#pragma dynamic 32768
#pragma ctrlchar '\'
/*2}}}*/
/* Constants {{{2*/
#define PLUGIN_DESC "UniFires Base"
#define PLUGIN_AUTHOR "Uzi"
#define SESSION_KEY_NAME "u5id"
#define MAX_BUFFER_LENGTH 2000 

#define ENABLE_NAME_FAKE
/*2}}}*/
/* Variables {{{2*/
/* Debug mode flag */
new g_debug = 0;
/* Global SQL tuple, used in all queries */
new Handle:g_db = Handle:Empty_Handle;
new g_db_ready = 1;
new g_sql_id = 0;
/* Timer. All timer intervals are set in tenth of second (1/10 second) */
new g_timer = 0;
new g_timer_clear_pw = 10;
new g_timer_check_user = 1;
/* Server */
new g_srv_id = 0;
new g_srv_free_play = 0;
new g_srv_name[33] = "UniFires HLDS";
new g_srv_type = 1;
new g_srv_map_time = 30;
new g_srv_normal_slots = 16;
new g_srv_vip_slots = 4;
new g_srv_mod_slots = 2;
new g_srv_admin_slots = 1;
new g_srv_breath_lap = 3;
/* Global settings */
new g_auth_method[33] = "password";
new g_auth_field[33] = "_pw";
new g_role_user_id = 0;
new g_role_admin_id = 1;
new g_role_mod_id = 2;
new g_role_vip_id = 3;
new g_role_user_amx[33] = "z";
new g_role_admin_amx[33] = "abcdefghijklmnopqrstu";
new g_role_mod_amx[33] = "bcdefghijkmnopqrstu";
new g_role_vip_amx[33] = "bz";
/* User profile */
enum enum_user_info{
	e_user_id,
	e_fake_user_id,
	e_roles[33], 
	e_name[33],
	e_fake_name[33],
	e_tag[17],
	e_tail[17],
	e_full_name[33],
};

new g_users[33][enum_user_info];
/*2}}}*/
/*}}}*/
/* Utilities {{{*/
stock debug_print(const format_str[], any:...) 
{
	if (g_debug)
	{
		new buffer[1000] ="";
		vformat(buffer, sizeof(buffer), format_str, 2);
		server_print("U5: %s", buffer);
	}
}
stock strvcat(dest[], const format_str[], any:...) 
{
	new buffer[1000] ="";
	vformat(buffer, sizeof(buffer), format_str, 3);
	strcat(dest, buffer, MAX_BUFFER_LENGTH);
}
stock client_chat(id, const format_str[], any:...) 
{
	if (id < 0 || id > 32)
		return;

	new s[1000] = "\x04U5\x01 : ",
		s2[1000] ="";
	vformat(s2, sizeof(s2), format_str, 3);
	strcat(s, s2, 1000);

	if (id)
	{
		message_begin(MSG_ONE, get_user_msgid("SayText"), {0,0,0}, id);
		write_byte(id);
		write_string(s);
		message_end();
	}
	else
	{
		new players[32], players_num, i;
		get_players(players, players_num)
		for (i = 0; i < players_num; i++)
		{
			message_begin(MSG_ONE, get_user_msgid("SayText"), {0,0,0}, players[i]);
			write_byte(players[i]);
			write_string(s);
			message_end();
		}
	}
}
stock client_kick(id, const format_str[] = "", any:...) 
{
	new buffer[1000] ="";
	vformat(buffer, sizeof(buffer), format_str, 3);
	server_cmd("kick #%d \"%s\"", get_user_userid(id), buffer);
}
/*}}}*/
/* SQL functions {{{*/
/*==============================================================================
Performs a query agains the initialized global DB.
This function accept only 1 query statement and it MUST BE ended with ';'.
Anything follows this ';' will be assumed extra data and will be passed the SQL
query engine in this format:

	query_name:query_id:extra_data

where query_id is automatically added.
==============================================================================*/
stock sql_query(const query_name[] = "?", const format_str[], ...) 
{
	if ((!g_db_ready) && (!equal(query_name, "db_check")))
		server_print("SQL connection is not ready! Discarded this query.");
	else
	{
		new buffer[1000] ="";
		new extra[100] = "";
		new data[200];
		new n;

		// Combine given arguments into a query string.
		vformat(buffer, sizeof(buffer), format_str, 3);
		// Get the extra data.
		for (n = strlen(buffer); n > 0; n--)
		{
			if (buffer[n] == ';')
			{
				buffer[n] = 0;
				copy(extra, 100, buffer[n+1]);
				debug_print("SQL QUERY, %s, %s", buffer, extra);
				break;
			}
		}
		format(data, sizeof(data), "%s:%d:%s", query_name, g_sql_id, extra);
		SQL_ThreadQuery(g_db, "sql_handler_master", buffer, data, strlen(data) + 1);
		debug_print("SQL SENT, #%d, %s", g_sql_id, query_name);
		g_sql_id++;
	}
}

/*==============================================================================
Escapes the given string to conform to SQL string literal rule.
==============================================================================*/
stock sql_esc(s[])
{
	new buffer[1000];
	copy(buffer, sizeof(buffer), s);
	// Escape all backslashes.
	replace_all(buffer, sizeof(buffer), "\\", "\\\\");
	// Escape all single quotes.
	replace_all(buffer, sizeof(buffer), "'", "\\'");
	debug_print("SQL_ESC, %s => %s", s, buffer);
	return buffer;
}

/*==============================================================================
Default handle for SQL queries. It prints/logs the query's state and return 
without any further processing. 
==============================================================================*/
public sql_handler_master(failstate, Handle:query, error[], errnum, data[], size, Float:queuetime)
{
	new query_name[65], query_id_str[11], query_id, query_data[257];
	strtok(data, query_name, 64, query_data, 256, ':');
	strtok(query_data, query_id_str, 10, query_data, 256, ':');
	query_id = str_to_num(query_id_str);

	if (failstate == TQUERY_SUCCESS)
	{
		debug_print("SQL OK, #%d, %s, %fs.", query_id, query_name, Float:queuetime);
		if (equali(query_name, "get_srv_settings"))
		{
			if (!SQL_NumResults(query))
			{
				server_print("FATALITY: server ID %d doesn't exist/active/offline", g_srv_id);
				terminate_srv();
			}
			else
			{
				// Handle this server settings.
				sql_handle_srv_settings(query);
				// Also retrieve global settings.
				sql_query("get_global_settings", "SELECT * FROM cs_settings");
			}
		}
		else if (equali(query_name, "get_global_settings"))
			sql_handle_global_settings(query);
		else if (equali(query_name, "srv_breath"))
			sql_handle_srv_breath(query);
		else if (equali(query_name, "check_user_in"))
			sql_handle_user_data(query, str_to_num(query_data));
	}
	else
	{
		debug_print("FATALITY, SQL failed, #%d, %s, %fs. %s", query_id, query_name, Float:queuetime, error);
		terminate_srv();
	}
	
	return PLUGIN_CONTINUE
}
stock sql_handle_global_settings(Handle:query)
{
	new name[33], value[201];

	while (SQL_MoreResults(query))
	{
		name[0] = 0; value[0] = 0;
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "name"), name, 32);
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "value"), value, 200);
		SQL_NextRow(query);

		if (equali(name, "auth_method"))
			copy(g_auth_method, 32, value); 
		else if (equali(name, "auth_field"))
			copy(g_auth_field, 32, value); 
		else if (equali(name, "role_user_id"))
			g_role_user_id = str_to_num(value); 
		else if (equali(name, "role_admin_id"))
			g_role_admin_id = str_to_num(value); 
		else if (equali(name, "role_mod_id"))
			g_role_mod_id = str_to_num(value); 
		else if (equali(name, "role_vip_id"))
			g_role_vip_id = str_to_num(value); 
		else if (equali(name, "role_user_amx"))
			copy(g_role_user_amx, 32, value); 
		else if (equali(name, "role_admin_amx"))
			copy(g_role_admin_amx, 32, value); 
		else if (equali(name, "role_mod_amx"))
			copy(g_role_mod_amx, 32, value); 
		else if (equali(name, "role_vip_amx"))
			copy(g_role_vip_amx, 32, value); 
	}

	debug_print("global settings:");
	debug_print("    auth_method:          %s", g_auth_method);
	debug_print("    auth_field:           %s", g_auth_field);
	debug_print("    role_user_id:         %d", g_role_user_id);
	debug_print("    role_admin_id:        %d", g_role_admin_id);
	debug_print("    role_mod_id:          %d", g_role_mod_id);
	debug_print("    role_vip_id:          %d", g_role_vip_id);
	debug_print("    role_user_amx:        %s", g_role_user_amx);
	debug_print("    role_admin_amx:       %s", g_role_admin_amx);
	debug_print("    role_mod_amx:         %s", g_role_mod_amx);
	debug_print("    role_vip_amx:         %s", g_role_vip_amx);
}
stock sql_handle_srv_settings(Handle:query)
{
	new pwd[33], rcon[33];
	SQL_ReadResult(query, SQL_FieldNameToNum(query, "name"), g_srv_name, 32);
	g_srv_free_play = SQL_ReadResult(query, SQL_FieldNameToNum(query, "free_play"));
	g_srv_type = SQL_ReadResult(query, SQL_FieldNameToNum(query, "type"));
	g_srv_map_time = SQL_ReadResult(query, SQL_FieldNameToNum(query, "map_time"));
	g_srv_vip_slots = SQL_ReadResult(query, SQL_FieldNameToNum(query, "vip_slots"));
	g_srv_mod_slots = SQL_ReadResult(query, SQL_FieldNameToNum(query, "mod_slots"));
	g_srv_admin_slots = SQL_ReadResult(query, SQL_FieldNameToNum(query, "admin_slots"));
	g_srv_normal_slots = get_maxplayers()
		- g_srv_vip_slots
		- g_srv_admin_slots
		- g_srv_mod_slots;
	g_srv_breath_lap = SQL_ReadResult(query, SQL_FieldNameToNum(query, "breath_lap"));
	SQL_ReadResult(query, SQL_FieldNameToNum(query, "pwd"), pwd, 32);
	SQL_ReadResult(query, SQL_FieldNameToNum(query, "rcon"), rcon, 32);

	debug_print("server runtime data are:");
	debug_print("    Name:          %s", g_srv_name);
	debug_print("    Free play:     %d", g_srv_free_play);
	debug_print("    Type:          %d", g_srv_type);
	debug_print("    Map time:      %d", g_srv_map_time);
	debug_print("    Slots:         %d", get_maxplayers());
	debug_print("    VIP slots:     %d", g_srv_vip_slots);
	debug_print("    MOD slots:     %d", g_srv_mod_slots);
	debug_print("    ADMIN slots:   %d", g_srv_admin_slots);
	debug_print("    Breath lap:    %d", g_srv_breath_lap);
	debug_print("    Password:      %s", pwd);
	debug_print("    RCON:          %s", rcon);

	// Do neccessary updates.
	server_cmd("hostname \"%s\"", g_srv_name);
	server_cmd("sv_password \"%s\"", pwd);
	server_cmd("rcon_password \"%s\"", rcon);
	server_cmd("mp_timelimit %d", g_srv_map_time);
}
stock sql_handle_srv_breath(Handle:query)
{
	if (!SQL_NumResults(query))
		return;
	new change[33];
	SQL_ReadResult(query, SQL_FieldNameToNum(query, "change"), change, 32);
	if (equali(change, "runtime"))
	{
		debug_print("Updating server runtime...");
		sql_handle_srv_settings(query);
	}
	else if (equali(change, "cmd"))
	{
		new cmd[201];
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "cmd"), cmd, 200);
		debug_print("Executing DB command \"%s\"", cmd);
		server_cmd("%s", cmd);
	}
}
/*}}}*/
/* Server & map functions {{{*/
public plugin_extra_config()
{
	// Set some built-in AMXX CVARs.
	set_cvar_num("amx_mode", 0);
	set_cvar_num("amx_reservation", 0);
	set_cvar_num("amx_hideslots", 0);
	// Determine UniFires ID (this HLDS instance's ID)
	new srv_id_str[12] = "";
	get_localinfo("srv_id", srv_id_str, 11);
	if (strlen(srv_id_str))
	{
		g_srv_id = str_to_num(srv_id_str);
		if (g_srv_id <= 0)
			g_srv_id = 0;
		else
		{
			debug_print("Server's ID is %d", g_srv_id);
			// Set up database access.
			new db_host[33],db_user[33],db_pwd[33],db_str[65];
			get_cvar_string("u5_db", db_str, 64);
			debug_print("SQL connection: %s", db_str);
			strtok(db_str, db_user, 32, db_str, 64, ':');
			strtok(db_str, db_pwd, 32, db_str, 64, '@');
			strtok(db_str, db_host, 32, db_str, 64, '/');
			debug_print("SQL host: %s", db_host);
			debug_print("SQL user: %s", db_user);
			debug_print("SQL password: %s", db_pwd);
			debug_print("SQL schema: %s", db_str);
			g_db = SQL_MakeDbTuple(db_host,db_user,db_pwd,db_str)
			// Retrieving server settings from database.
			g_db_ready = 1;
			sql_query("update_u5_version",
				"UPDATE cs_servers SET u5_version = '%s' WHERE id = %d",
				PLUGIN_VER, g_srv_id);
			sql_query(
				"get_srv_settings",
				"SELECT * FROM cs_online_servers WHERE id = %d AND active",
				g_srv_id);
		}
	}
	else
		g_srv_id = 0;

	// Set up timers here.
	set_task(Float:0.1, "timer_master", _, _, _, "b");
}
stock terminate_srv()
{
	client_chat(0, "Xin loi, server gap loi can tam dung hoac khoi dong lai");
	client_chat(0, "Ban se bi kick sau 10 giay nua");
	server_print("Terminating this server in 15 seconds...");
	set_task(10.0, "timer_kick_users");
	set_task(15.0, "timer_terminate_srv");
	// Stop all further queries.
	g_db_ready = 0;
}
/*}}}*/
/* User functions {{{*/
/*==============================================================================
Returns slot ID of the given UID. If the UID doesn't exists in this server,
returns 0.
==============================================================================*/
stock uid2slot(uid)
{
	new i;
	for (i = 1; i< 33; i++)
		if (g_users[i][e_user_id] == uid)
			return i;

	return 0;
}
/*==============================================================================
Check if the given user ID has the given role ID.
==============================================================================*/
stock has_role(id, role_id)
{
	new roles[33], role[3];
	new done = 0;
	new found = 0;

	copy(roles, 33, g_users[id][e_roles]);

	while (!done)
	{
		strtok(roles, role, 3, roles, 33, ',', 1);

		if (strlen(role) == 0)
			break;

		if (str_to_num(role) == role_id)
		{
			done = 1;
			found = 1;
		}
		else if (strlen(roles) == 0)
			done = 1;
	}

	return found;
}

stock role_admin(id)
{
	return has_role(id, g_role_admin_id);
}
stock role_mod(id)
{
	return has_role(id, g_role_mod_id);
}
stock role_vip(id)
{
	return has_role(id, g_role_vip_id);
}
stock can_fake(id)
{
	#if defined ENABLE_NAME_FAKE
	if (role_admin(id))
		return 1;
	#endif
	return 0;
}
stock can_lock(id)
{
	if (role_admin(id) | role_mod(id))
		return 1;
	return 0;
}
stock admin_users_count()
{
	new i, count = 0;
	for (i = 1; i < 33; i++)
		if (g_users[i][e_user_id] && role_admin(i))
			count++;
	return count;
}
stock mod_users_count()
{
	new i, count = 0;
	for (i = 1; i < 33; i++)
		if (g_users[i][e_user_id] && role_mod(i))
			count++;
	return count;
}
stock vip_users_count()
{
	new i, count = 0;
	for (i = 1; i < 33; i++)
		if (g_users[i][e_user_id] && role_vip(i))
			count++;
	return count;
}
stock normal_users_count()
{
	new i, count = 0;
	for (i = 1; i < 33; i++)
		if (g_users[i][e_user_id] && 
			!(role_admin(i) || role_mod(i) || role_vip(i)))
			count++;
	return count;
}
stock reset_user_record(id)
{
	g_users[id][e_user_id] = 0;
	g_users[id][e_roles][0] = 0;
	g_users[id][e_name][0] = 0;
	g_users[id][e_fake_name][0] = 0;
	g_users[id][e_tag][0] = 0;
	g_users[id][e_tail][0] = 0;
	g_users[id][e_full_name][0] = 0;
}
stock reset_all_users_records()
{
	new i;
	for (i = 0; i < 33; i++)
		reset_user_record(i);
}
stock update_full_name(id)
{
	if (g_users[id][e_user_id])
	{
		new tag[21] = "", tail[21] = "";

		if (strlen(g_users[id][e_tag]))
			format(tag, 20, "%s -", g_users[id][e_tag]);

		if (strlen(g_users[id][e_tail]))
			format(tail, 20, "< %s", g_users[id][e_tail]);
		
		// Combine tag, name/fake name and tail.
		#if defined ENABLE_NAME_FAKE
		if (can_fake(id) && g_users[id][e_fake_name][0])
			format(g_users[id][e_full_name], 32,
				"%s %s %s", tag, g_users[id][e_fake_name], tail);
		else
			format(g_users[id][e_full_name], 32,
				"%s %s %s", tag, g_users[id][e_name], tail);
		#else
		format(g_users[id][e_full_name], 32,
			"%s %s %s", tag, g_users[id][e_name], tail);
		#endif

		trim(g_users[id][e_full_name]);

		// Validate name to avoid naming bugs.
		new s[33], i, j = 0;
		copy(s, 33, g_users[id][e_full_name]);

		for (i = 0; i < strlen(s); i++)
		{
			if (s[i] == '"')
				continue;
			else if (s[i] == '.' && i > 0 && s[i - 1] == '.')
				continue;
			g_users[id][e_full_name][j++] = s[i];
		}

		g_users[id][e_full_name][j] = 0;

		// Set the name.
		client_cmd(id, "name \"%s\"", g_users[id][e_full_name]);
	}
}
stock screen_name(id)
{
	new name[33] = "";

	#if defined ENABLE_NAME_FAKE
	if (can_fake(id) && g_users[id][e_fake_name][0])
		copy(name, 32, g_users[id][e_fake_name]);
	else
		copy(name, 32, g_users[id][e_name]);
	#else
	copy(name, 32, g_users[id][e_name]);
	#endif

	return name;
}
stock check_user_name(id)
{
	if (is_user_alive(id) && g_users[id][e_user_id])
	{
		new name[33];
		get_user_info(id, "name", name, 32);
		if (!equal(name, g_users[id][e_full_name], 32))
		{
			client_chat(id, "Ban khong duoc doi ten.");
			client_chat(id, "Neu muon dat tag/tail, xin hay dung cac lenh tuong ung.");
			client_cmd(id, "setinfo name \"%s\"", g_users[id][e_full_name]);
		}
	}
}
public check_user_in(data[])
{
	new id = data[0];
	reset_user_record(id);

	if (equali(g_auth_method, "password"))
	{
		new name[33] = "", password[33] = "";
		get_user_info(id, "name", name, 32);
		get_user_info(id, g_auth_field, password, 32);
		debug_print("slot %d, \"%s\", password \"%s\"", id, name, password);
		sql_query("check_user_in", "CALL cs_user_in('%s', '%s', %d);%d",
			sql_esc(name), sql_esc(password), g_srv_id, id); 
	}
	return PLUGIN_CONTINUE;
}
stock check_user_out(id)
{
	if (!g_users[id][e_user_id])
		return PLUGIN_CONTINUE;

	sql_query("check_user_out", "CALL cs_user_out(%d)", g_users[id][e_user_id]); 
	reset_user_record(id);
	return PLUGIN_CONTINUE;
}
stock sql_handle_user_data(Handle:query, id)
{
	if (SQL_FieldNameToNum(query, "error") == -1)
	{
		g_users[id][e_user_id] = SQL_ReadResult(query, SQL_FieldNameToNum(query, "id"));
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "name"), g_users[id][e_name], 32);
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "fake_name"), g_users[id][e_fake_name], 32);
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "role_ids"), g_users[id][e_roles], 64);
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "tag"), g_users[id][e_tag], 32);
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "tail"), g_users[id][e_tail], 32);

		// TODO: Check slot.
		if (normal_users_count() > g_srv_normal_slots)
			if (!(role_admin(id) || role_mod(id) || role_vip(id)))
			{
				check_user_out(id);
				client_kick(id, "Khong con cho trong");
				return;
			}

		// User was successfully checked in.
		debug_print("new user was checked in:");
		debug_print("    User ID:    %d", g_users[id][e_user_id]);
		debug_print("    User name:  %s", g_users[id][e_name]);
		debug_print("    Fake name:  %s", g_users[id][e_fake_name]);
		debug_print("    Tag:        %s", g_users[id][e_tag]);
		debug_print("    Tail:       %s", g_users[id][e_tail]);
		debug_print("    Roles:      %s", g_users[id][e_roles]);

		// Set user's name.
		update_full_name(id);

		// Map privileges to AMXX's access flags.
		if (role_admin(id))
		{
			set_user_flags(id, read_flags(g_role_admin_amx));
			// Fake admin's UID so other cannot recognize him using UID.
			g_users[id][e_fake_user_id] = 1000 + random(1000)
		}
		else if (role_mod(id))
			set_user_flags(id, read_flags(g_role_mod_amx));
		else if (role_vip(id))
			set_user_flags(id, read_flags(g_role_vip_amx));
		else 
			set_user_flags(id, read_flags(g_role_user_amx));
	}
	else if ((SQL_ReadResult(query, SQL_FieldNameToNum(query, "error")) == 3) && g_srv_free_play)
	{
		// Invalid user but free server.
		set_user_flags(id, read_flags(g_role_user_amx));
	}
	else
	{
		new error_msg[192] = "";
		SQL_ReadResult(query, SQL_FieldNameToNum(query, "error_msg"), error_msg, 191);
		client_kick(id, "%s", error_msg);
	}
}
/*------------------------------------------------------------------------------
Adds a leading character to the given string to make it a proper "say" commands.
------------------------------------------------------------------------------*/
stock cmd_lead(s[])
{
	new cmd[33];
	format(cmd, 32, "/%s", s);
	return cmd;
}
/*------------------------------------------------------------------------------
Handle "say" commands.
------------------------------------------------------------------------------*/
public cmd_say(id, level, cid)
{
	if (!cmd_access(id, level, cid, 2))
		return PLUGIN_HANDLED;

	if (g_users[id][e_user_id] == 0)
		return PLUGIN_CONTINUE;

	new line[192];
	read_args(line, 191);
	remove_quotes(line);
	trim(line);
	// Remove all backslashes from command. HLDS doesn't allow them.
	replace_all(line, sizeof(line), "\\", "");

	/*------------------------------------------------------------------------*/
	if (equal(line, cmd_lead("list")) || equal(line, cmd_lead("users")))
	{
		new motd_title[65] = "Danh sach nguoi choi",
			motd[MAX_BUFFER_LENGTH] = "";
		// Prepare the MOTD.
		strvcat(motd, "<body bgcolor=black><font size=3 color=#ffb000><pre>\n");
		strvcat(motd, "    UID|Ten                             |Cap bac\n");
		strvcat(motd, "-------+--------------------------------+-------\n");
		// Write the MOTD.
		new i;
		for (i = 1; i < 33; i++)
			if (g_users[i][e_user_id])
			{
				if (i == id)
					strvcat(motd, "<font color=lime>");

				if (role_admin(i))
				{
					if (strlen(g_users[i][e_fake_name]))
						strvcat(motd, "%7d|%32s|\n",
							g_users[i][e_fake_user_id],
							screen_name(i));
					else
						strvcat(motd, "%7d|%32s|ADMIN\n",
							g_users[i][e_user_id],
							screen_name(i));
				}
				else if (role_mod(i))
					strvcat(motd, "%7d|%32s|MOD\n",
						g_users[i][e_user_id],
						screen_name(i));
				else if (role_vip(i))
					strvcat(motd, "%7d|%32s|VIP\n",
						g_users[i][e_user_id],
						screen_name(i));
				else
					strvcat(motd, "%7d|%32s|\n",
						g_users[i][e_user_id],
						screen_name(i));

				// Reveal faker(s) if the caller has the right.
				if (can_fake(id) && strlen(g_users[i][e_fake_name]))
					strvcat(motd, "        \"faked\" by %s, UID %d\n",
						g_users[i][e_name],
						g_users[i][e_user_id]);

				if (i == id)
					strvcat(motd, "</font>");
			}

		// End the MOTD.
		strvcat(motd, "</pre></font></body>");
		// Show the MOTD.
		show_motd(id, motd, motd_title);
	}
	/*------------------------------------------------------------------------*/
	else if (equal(line, cmd_lead("ip")))
	{
		new motd_title[65] = "Danh sach IP",
			motd[MAX_BUFFER_LENGTH] = "",
			ip[16], ip2[16], a[32][19], index[3],
			i, j, n;
		// Prepare the MOTD.
		strvcat(motd, "<body bgcolor=black><font size=3 color=#ffb000><pre>\n");
		strvcat(motd, "IP             |Ten                               \n");
		strvcat(motd, "---------------+----------------------------------\n");
		j = 0;
		for (i = 1; i < 33; i++)
			if (g_users[i][e_user_id])
			{
				get_user_ip(i, ip, 15, 1);
				format(a[j++], 18, "%s:%d", ip, i);
			}
		SortStrings(a, j);
		ip[0] = 0;
		for (n = 0; n < j; n++)
		{
			strtok(a[n], ip2, 15, index, 2, ':');
			i = str_to_num(index);
			if (!equal(ip, ip2))
			{
				strvcat(motd, "%15s|%32s\n", ip2, screen_name(i));
			}
			else
			{
				strvcat(motd, "%15s|%32s\n", " ", screen_name(i));
			}
			copy(ip, 15, ip2);
		}
		// Show the MOTD.
		strvcat(motd, "</pre></font></body>");
		show_motd(id, motd, motd_title);
	}
	#if defined ENABLE_NAME_FAKE
	/*------------------------------------------------------------------------*/
	else if (strfind(line, cmd_lead("fake")) == 0)
	{
		if (can_fake(id))
		{
			new cmd[5] = "", name[33] = "";
			strbreak(line, cmd, 4, name, 32);
			remove_quotes(name);
			trim(name);

			if (strlen(name))
			{
				copy(g_users[id][e_fake_name], 32, name);
				update_full_name(id);
				sql_query("fake_name",
					"UPDATE cs_users SET fake_name = '%s' WHERE id = %d",
					sql_esc(name), g_users[id][e_user_id]);
				client_chat(id, "Ban vua gia mao la \"%s\"", name);
			}
			else
			{
				g_users[id][e_fake_name][0] = 0;
				update_full_name(id);
				sql_query("unfake_name", "UPDATE cs_users SET fake_name = NULL WHERE id = %d",
					g_users[id][e_user_id]);
				client_chat(id, "Ban vua thoi gia mao ten");
			}
		}
		else
			client_chat(id, "Ban khong co quyen gia mao ten");

	}
	#endif
	/*------------------------------------------------------------------------*/
	else if (strfind(line, cmd_lead("tag")) == 0)
	{
		new cmd[5] = "", tag[17] = "";
		strbreak(line, cmd, 4, tag, 16);
		remove_quotes(tag);
		trim(tag);

		if (strlen(tag))
		{
			copy(g_users[id][e_tag], 16, tag);
			update_full_name(id);
			sql_query("set_tag",
				"UPDATE cs_users SET tag = '%s' WHERE id = %d",
				sql_esc(tag), g_users[id][e_user_id]);
			client_chat(id, "Ban vua dat tag la \"%s\"", tag);
		}
		else
		{
			g_users[id][e_tag][0] = 0;
			update_full_name(id);
			sql_query("remove_tag", "UPDATE cs_users SET tag = NULL WHERE id = %d",
				g_users[id][e_user_id]);
			client_chat(id, "Ban vua thoi khong dung tag");
		}
	}
	/*------------------------------------------------------------------------*/
	else if (strfind(line, cmd_lead("tail")) == 0)
	{
		new cmd[6] = "", tail[17] = "";
		strbreak(line, cmd, 5, tail, 16);
		remove_quotes(tail);
		trim(tail);

		if (strlen(tail))
		{
			copy(g_users[id][e_tail], 16, tail);
			update_full_name(id);
			sql_query("set_tail",
				"UPDATE cs_users SET tail = '%s' WHERE id = %d",
				sql_esc(tail), g_users[id][e_user_id]);
			client_chat(id, "Ban vua dat tail la \"%s\"", tail);
		}
		else
		{
			g_users[id][e_tail][0] = 0;
			update_full_name(id);
			sql_query("remove_tail", "UPDATE cs_users SET tail = NULL WHERE id = %d",
				g_users[id][e_user_id]);
			client_chat(id, "Ban vua thoi khong dung tail");
		}
	}
	/*------------------------------------------------------------------------*/
	else if ((strfind(line, cmd_lead("hang")) == 0)
				|| (strfind(line, cmd_lead("treo")) == 0))
	{
		if (can_lock(id))
		{
			new cmd[6] = "",
				target[7] = "",
				target_id,
				duration_str[3] = "",
				duration,
				reason[65] = "",
				s[192] = "";

			strbreak(line, cmd, 5, s, 191);
			strbreak(s, target, 6, s, 64);
			strbreak(s, duration_str, 2, reason, 64);
			trim(reason);
			
			if (strlen(target))
			{
				if (is_str_num(target) && uid2slot(str_to_num(target)))
				{
					target_id = str_to_num(target);

					if (uid2slot(target_id) == 0)
						client_chat(id, "UID khong ton tai. Khong the treo nick duoc");
					else if (role_admin(uid2slot(target_id)))
						client_chat(id, "Doi tuong la ADMIN. Khong the treo nick ADMIN");
					else if (role_mod(uid2slot(target_id)) && role_mod(id))
						client_chat(id, "Doi tuong cung la MOD. Chi ADMIN moi treo duoc nick MOD");
					else if (strlen(duration_str) && is_str_num(duration_str))
					{
						duration = str_to_num(duration_str);

						if (duration < 0 || duration > 30)
							client_chat(id, "Thoi gian treo nick phai trong lockng 1-30 ngay");
						else if (strlen(reason))
						{
							client_chat(0, "\"%s\" da bi treo nick vi %s", 
								screen_name(uid2slot(target_id)),
								reason);
							sql_query("hang_user",
								"CALL cs_user_hang(%d, %d, '%s', %d, %d)",
								target_id, g_users[id][e_user_id], reason, g_srv_id, duration);
							client_kick(uid2slot(target_id), "Ban da bi treo nick vi %s", reason);
						}
						else
							client_chat(id, "Ban phai cho biet li do treo nick");
					}
					else
						client_chat(id, "Ban phai cho biet so ngay treo nick (1-30)");
				}
				else
					client_chat(id, "UID khong hop le. Khong the treo nick duoc");
			}
			else
			{
				client_chat(id, "Ban phai danh lenh theo dung huong dan");
				client_chat(id, "Cu phap: /treo UID so-ngay-treo-nick(1-30) li-do");
			}
		}
		else
			client_chat(id, "Ban khong co quyen treo nick");
	}
	/*------------------------------------------------------------------------*/
	else if ((strfind(line, cmd_lead("lock")) == 0) 
				|| (strfind(line, cmd_lead("lock")) == 0))
	{
		if (can_lock(id))
		{
			new cmd[6] = "",
				target[7] = "",
				target_id,
				reason[65] = "",
				s[192] = "";

			strbreak(line, cmd, 5, s, 191);
			strbreak(s, target, 6, reason, 64);
			trim(reason);
			
			if (strlen(target))
			{
				if (is_str_num(target) && uid2slot(str_to_num(target)))
				{
					target_id = str_to_num(target);
					
					if (uid2slot(target_id) == 0)
						client_chat(id, "UID khong ton tai. Khong the lock nick duoc");
					else if (role_admin(uid2slot(target_id)))
						client_chat(id, "Doi tuong la ADMIN. Khong the lock nick ADMIN");
					else if (role_mod(uid2slot(target_id)) && role_mod(id))
						client_chat(id, "Doi tuong cung la MOD. Chi ADMIN moi lock duoc nick MOD");
					else if (strlen(reason))
					{
						client_chat(0, "\"%s\" da bi lock vi %s", 
							screen_name(uid2slot(target_id)),
							reason);
						sql_query("lock_user",
							"CALL cs_user_lock(%d, %d, '%s', %d)",
							target_id, g_users[id][e_user_id], reason, g_srv_id);
						client_kick(uid2slot(target_id), "Ban da bi lock vi %s", reason);
					}
					else
						client_chat(id, "Ban phai cho biet li do lock nick");
				}
				else
					client_chat(id, "UID khong hop le. Khong the lock nick duoc");
			}
			else
			{
				client_chat(id, "Ban phai danh lenh theo dung huong dan");
				client_chat(id, "Cu phap: /lock UID li-do");
			}
		}
		else
			client_chat(id, "Ban khong co quyen lock nick");
	}
	/*------------------------------------------------------------------------*/
	else if (strfind(line, cmd_lead("pwd")) == 0)
	{
		new cmd[5] = "", pwd[65] = "";
		strbreak(line, cmd, 5, pwd, 64);
		remove_quotes(pwd);
		trim(pwd);

		if (!strlen(pwd))
		{
			get_cvar_string("sv_password", pwd, 64);

			if (strlen(pwd))
			{
				client_chat(id, "Mat khau server la \"%s\"", pwd); 
				client_chat(id, "De xoa mat khau, say \"/pwd none\"");
			}
			else
				client_chat(id, "Server khong dat mat khau");
		}
		else
		{
			if (role_admin(id) || role_mod(id))
			{
				if (equali(pwd, "none"))
				{
					client_chat(0, "%s vua xoa mat khau server"
						, screen_name(id), pwd); 
					server_cmd("sv_password \"\"");	
				}
				else
				{
					client_chat(id, "Mat khau server vua dat thanh \"%s\""
						, pwd); 
					server_cmd("sv_password \"%s\"", pwd);
					client_chat(id, "De xoa mat khau, say \"/pwd none\"");
				}
			}
			else
				client_chat(id, "Ban khong co quyen thay doi mat khau server");
		}
	}
	/*------------------------------------------------------------------------*/
	else if (strfind(line, cmd_lead("restart")) == 0)
	{
		if (role_admin(id) || role_mod(id))
		{
			client_chat(0, "%s vua restart round", screen_name(id));
			server_cmd("sv_restart 1");	
		}
		else
			client_chat(id, "Ban khong co quyen restart round");
	}
	else
	{
		return PLUGIN_CONTINUE;
	}

	return PLUGIN_HANDLED;
}
/* }}} */
/* Plugins event handlers {{{*/
public plugin_init()
{
	// Register this plugin.
	register_plugin(PLUGIN_DESC, PLUGIN_VER, PLUGIN_AUTHOR);
	new plugin_name[65], filename[129], version[9], author[65], status[17];
	get_plugin(-1, filename, 128, plugin_name, 64, version, 8, author, 64, status, 16);
	server_print("%s ver. %s, by %s from %s, %s", plugin_name, version, author, filename, status);
	g_debug = plugin_flags() & AMX_FLAG_DEBUG;
	// Perform extra initialization here.
	register_clcmd("say", "cmd_say", ADMIN_ALL, "<any thing to say>");
	// Register events handlers.
	register_logevent("event_round_end", 2, "1=Round_End");
	register_logevent("event_round_start", 2, "1=Round_Start");
	register_event( "TeamInfo", "event_join_team", "a");
	register_logevent ( "event_player_action", 3, "1=triggered" );
	register_event("TeamScore", "event_team_score", "a");
	register_event("DeathMsg", "event_death", "a");
	register_forward(FM_ServerDeactivate, "event_map_end");
	RegisterHam(Ham_Spawn, "player", "event_player_spawned", 1);
	RegisterHam(Ham_TakeDamage, "player", "event_take_damage");
	// Register CVARs.
	register_cvar("u5_db", "");

	return PLUGIN_CONTINUE;
}

public plugin_cfg()
{
	// Execute unilink.cfg (or whatever file the localinfo u5_cfg point to)
	// to gets the vital CVARs.
	new cfg_dir[65], u5_cfg[65] = "";
	get_configsdir(cfg_dir, 64);
	get_localinfo("u5_cfg", u5_cfg, 64);
	if (strlen(u5_cfg))
		server_cmd("exec %s/%s", cfg_dir, u5_cfg);
	else
		server_cmd("exec %s/unifires.cfg", cfg_dir);
	// Delay the extra configuration a little to make sure all CVARs are set.
	set_task(Float:0.5, "plugin_extra_config", _, _, _);
}

public event_round_end()
{
	return PLUGIN_CONTINUE;
}
public event_round_start()
{
	return PLUGIN_CONTINUE;
}
public event_team_score()
{
}
public event_death()
{
}
public event_player_action()
{
    new arg[64], action[64], name[64], user_id, id;
    read_logargv(0,arg,64);
    read_logargv(2,action,64);
    parse_loguser(arg,name,64,user_id);
    id = find_player("k", user_id);
    if (id == 0)
        return;
    if (equal(action, "Planted_The_Bomb"))
    { 
    }
    else if (equal(action, "Defused_The_Bomb"))
    {
    }
    else if (equal(action, "Rescued_A_Hostage"))
    {
    }
    else if (equal(action, "Killed_A_Hostage"))
    {
    }
    else if (equal(action, "Became_VIP"))
    { 
    }
    else if (equal(action, "Escaped_As_VIP"))
    {
    }
}
public event_player_spawned(id)
{
	check_user_name(id);
}
public event_join_team()
{
	/*
	new id, team[2];
	id = read_data(1);
	read_data(2, team, 1);
	strtolower(team);
	// The variable team can be "c", "s", "t", "u" for counter-terrorist,
	// spectator, terrorists or unassigned, sequentially.
	*/
	return PLUGIN_CONTINUE;
}
public client_connect(id)
{
	if (!(is_user_hltv(id) || is_user_bot(id)))
	{
		new data[1];
		data[0] = id;
		// Delay a bit to give client a chance to completely enter the server.
		set_task(Float:1.0, "check_user_in", _, data, 1);
	}
	return PLUGIN_CONTINUE;
}

public client_putinserver(id)
{
	return PLUGIN_CONTINUE;
}

public client_disconnect(id)
{
	return check_user_out(id);
}
public event_map_end()
{
	return FMRES_IGNORED;
}
public event_take_damage(id, idinflictor, idattacker, Float:damage, damagebits)
{
}
public client_damage(attacker,victim,damage,wpnindex,hitplace,TA)
{
	return PLUGIN_CONTINUE;
}
public client_death(killer,victim,wpnindex,hitplace,TK)
{
	return PLUGIN_CONTINUE;
}
public bomb_explode(planter, defuser) 
{
	return PLUGIN_CONTINUE;
}
/*}}}*/
/* Timer {{{*/
public timer_master()
{
	if (g_timer == 10000)
		g_timer = 0;
	else
		g_timer++;

	if (g_timer % g_timer_clear_pw == 0)
		timer_clear_pw();

	if (g_timer % g_timer_check_user == 0)
		timer_check_users();

	if (g_srv_id)
	{
		if (g_timer % (10 * g_srv_breath_lap) == 0)
		{
			timer_srv_breath();
			timer_user_breath();
		}
	}
}
public timer_clear_pw()
{
	// If there's no player, clear the server's password.
	if (!get_playersnum(0))
	{
		new s[65] = "";
		get_cvar_string("sv_password", s, 64);
		if (strlen(s))
		{
			debug_print("Resetting the server's password since there's no player");
			server_cmd("sv_password \"\"");
		}
	}
}
public timer_check_users()
{
	new i;
	for (i = 1; i < 33; i++)
		if (g_users[i][e_user_id])
		{
			// Check for dropped users.
			if (!(is_user_connecting(i) || is_user_connected(i)))
			{
				debug_print("\"%s\" was dropped. Ending his session...",
					g_users[i][e_name]);
				check_user_out(i);
			}
			else
			{
				check_user_name(i);
			}
		}
}
public timer_user_breath()
{
	// Server's information string will be in this format:
	// "UID,UID...
	if (get_playersnum(0))
	{
		new i, info[225] = "";

		debug_print("user is breathing...");

		for (i = 1; i < 33; i++)
			if (g_users[i][e_user_id] && !(is_user_bot(i) || is_user_hltv(i)))
				strvcat(info, "%d,", g_users[i][e_user_id]);

		if (strlen(info))
		{
			debug_print("    %s", info);
			sql_query("user_breath", "CALL cs_user_breath('%s')", info);
		}
	}
}
public timer_kick_users()
{
	new players[32], players_num, i;
	get_players(players, players_num)
	for (i = 0; i < players_num; i++)
		client_kick(players[i], "Server tam dung hoac khoi dong lai");

}
public timer_terminate_srv()
{
	// TODO: kick all players to prevent zombies.
	server_cmd("quit");
}
public timer_srv_breath()
{
	sql_query( "srv_breath", "CALL cs_srv_breath(%d)", g_srv_id);
}
/*}}}*/
