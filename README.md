# hldsman

A collection of server-side scripts to manage Half-Life Dedicated Servers (HLDS), mainly Counter-Strike 1.6 with AMX Mod X. It ties game servers to a MySQL database (the "CS Portal" project), so player accounts, sessions, bans and server status are shared across all servers.

## Contents

| Path | Purpose |
| --- | --- |
| `plugins/unifires.sma` | UniFires Base: AMX Mod X plugin for login, sessions, slot reservation and server heartbeats. |
| `plugins/unifires.cfg` | Plugin settings, including the database connection string. |
| `plugins/db/` | MySQL schema, stored procedures, views and seed data. |
| `plugins/compile` | Build script that bumps the build number and compiles `.sma` files. |
| `plugins/include/` | Shared Pawn includes (`array.inc`, `fakemeta_util.inc`). |
| `plugins/admin_freelook.sma`, `plugins/admin_spec_esp.sma` | Admin spectator tools (third-party). |
| `plugins/zombie_plague_4.1.sma` and `plugins/zp_*.sma` | Zombie Plague 4.1 mod and extras (third-party). |
| `utils/hldsmond` | Python 2 daemon that starts and monitors HLDS processes. |
| `utils/hldsmond.conf` | Daemon settings. |
| `utils/SimpleMySQL.py` | Small MySQLdb wrapper used by the daemon. |

## How it works

1. **Database** holds the state: `cs_servers` (game servers), `cs_server_types`, `cs_users` (accounts and statistics), `cs_locks` (bans and suspensions) and `cs_settings`.
2. **Game servers** run `unifires.amxx` inside HLDS. On connect, the plugin calls `cs_user_in`. It sends heartbeats with `cs_user_breath` and `cs_srv_breath`, and calls `cs_user_out` on disconnect.
3. **Admins** lock, hang (timed) or unlock users with `cs_user_lock`, `cs_user_hang` and `cs_user_unlock`.
4. **hldsmond** runs on the host. Every 10 seconds it runs `cs_clean_up`, finds servers marked offline for its IP, and starts them in a `screen` session. If another HLDS holds the port, it stops that process first.
5. **Views** (`cs_online_servers`, `cs_online_users`, `cs_dead_servers`, `cs_dead_users`, `cs_active_users`, `cs_phpbb_users`) report current state.

Stored procedures (`plugins/db/routines.sql`) hold the business logic, so plugins and the daemon stay thin.

## Requirements

- MySQL with InnoDB and UTF-8 support.
- AMX Mod X with the `amxxpc` compiler, plus the `sqlx`, `fakemeta` and `hamsandwich` modules.
- Half-Life Dedicated Server with Counter-Strike (`hlds_run`, `-game cstrike`).
- For the daemon: Python 2 with `MySQLdb`, `screen`, `netstat` and `ps`. It must run as root.
- For the Zombie Plague files: AMX Mod X compatible with ZP 4.1.

## Installation

### 1. Create the database

Run the SQL files in this order against an empty schema, for example `cyzone`:

```sh
mysql -u root -p cyzone < plugins/db/tables.sql
mysql -u root -p cyzone < plugins/db/routines.sql
mysql -u root -p cyzone < plugins/db/views.sql
mysql -u root -p cyzone < plugins/db/data.sql
```

`plugins/db/views_phpbb3.sql` and `plugins/db/data_cyzone.sql` are optional. Use them only if you run the phpBB 3 forum or the Cyzone data set.

`data.sql` truncates `cs_settings` and `cs_server_types`, so run it only during initial setup.

### 2. Register your servers

Add a row to `cs_servers` for each game server: `host`, `port`, `name`, `server_root` (the directory containing `hlds_run`), `runas` (the system user), `type`, `slots` and `first_map`. Set `active` to `1` to let the daemon start it.

### 3. Configure the plugin

Edit `plugins/unifires.cfg` to point at your database:

```
u5_db "user:password@host/schema"
```

Then start each game server with these launch options:

```
+localinfo svr_id <n>          // the cs_servers.id of this server
+localinfo u5_cfg <file>       // optional: alternative config file (default unifires.cfg)
```

In AMX Mod X's `amxx.cfg`, set:

```
amx_mode 0
amx_reservation 0
amx_hideslots 0
```

### 4. Configure the daemon

Edit `utils/hldsmond.conf`:

| Key | Meaning |
| --- | --- |
| `HOST_IP` | The public IP of this host. Only servers with this `host` are started here. |
| `INTERVAL` | Seconds between checks (default `10`). |
| `LOG_DIR` | Log directory (default `/var/log/hldsmon/`). |
| `DB_HOST`, `DB_USER`, `DB_PWD`, `DB_DB` | Database connection. |

Change the default credentials before deploying. See Security below.

## Usage

### Build the plugin

The build script must run from `plugins/`, and it needs the AMX Mod X installation path in `AMXX`:

```sh
cd plugins
AMXX=/opt/amxmodx ./compile unifires.sma
```

Each run bumps `BUILDNUM`, writes `version.inc`, compiles the source, updates `chksum/<name>.md5` and copies the result to `plugins/` and `$AMXX/plugins/`. Sources whose checksum has not changed are skipped. A failed build reverts the build number.

Multiple sources can be passed at once: `./compile unifires.sma zp_class_climb.sma`.

### Start the monitoring daemon

Run it from `utils/`, because it reads `hldsmond.conf` from the current directory:

```sh
cd utils
sudo python2 hldsmond
```

It daemonizes, writes stdout to `$LOG_DIR/hldsmon.log` and stderr to `$LOG_DIR/error.log`. Stop it by killing the process. Note that a second instance is not detected, so run only one.

### Start a game server by hand

The daemon normally does this. To start one manually, mirror its command: a `screen` session, `hlds_run` with `-game cstrike`, `-pidfile hlds<id>.pid` and `+localinfo srv_id <id>`.

### Query state

```sql
SELECT * FROM cs_online_servers;
SELECT * FROM cs_online_users;
SELECT * FROM cs_dead_servers;
```

## Security

Several files currently contain credentials in plaintext:

- `plugins/unifires.cfg` (`root:root`)
- `utils/hldsmond.conf` (`hlds` / `cyds`, plus a server IP)

Before deploying, use a dedicated database user with the minimum privileges, keep these files readable only by the service account (`chmod 600`), and do not commit production passwords.

## Known limitations

- Python 2 and legacy Pawn. The daemon will not run on Python 3 without porting.
- No ranking or leaderboard. `cs_users` stores raw statistics (frags, deaths, hits, wins), and no code sorts or publishes them.
- `hldsmond` checks for a running daemon only in a TODO comment, so duplicate instances are possible.
- The Zombie Plague and admin plugins are third-party and keep their own licenses.

## Credits and license

- Written by Luu Phuong "Uzi" Vu (vuluuphuong@gmail.com). See the file headers.
- `admin_spec_esp.sma` is by KoST and `admin_freelook.sma` is by Jim. Both are GPL-licensed.
- Zombie Plague 4.1 and its extras belong to their respective authors.

See [LICENSE](LICENSE) for this repository's license terms.
