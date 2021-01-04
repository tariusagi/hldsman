/*================================================================================
	
		***********************************************
		********** [Zombie Plague Mod 4.1] ************
		***********************************************
	
	----------------------
	-*- Licensing Info -*-
	----------------------
	
	Zombie Plague Mod
	Copyright (C) 2008 by MeRcyLeZZ
	
	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.
	
	In addition, as a special exception, the author gives permission to
	link the code of this program with the Half-Life Game Engine ("HL
	Engine") and Modified Game Libraries ("MODs") developed by Valve,
	L.L.C ("Valve"). You must obey the GNU General Public License in all
	respects for all of the code used other than the HL Engine and MODs
	from Valve. If you modify this file, you may extend this exception
	to your version of the file, but you are not obligated to do so. If
	you do not wish to do so, delete this exception statement from your
	version.
	
	-------------------
	-*- Description -*-
	-------------------
	
	Zombie Plague is a Counter-Strike server modification, developed as an
	AMX Mod X plugin, which turns the game into a Humans vs Zombies struggle.
	It is based on the original infection mod, but it takes the concept to
	a new level by introducing:
	
	* New Gameplay Modes: Nemesis, Survivor, Multi Infection, Swarm, Plague
	* Zombie Classes System: allows addding unlimited custom zombie classes
	* Ammo Packs: awarded to skilled players, can be used to purchase goods
	* Extra Items System: allows adding unlimited custom items to buy
	* Custom Grenades: Fire, Frost, Flare, and Infection Bomb
	* Deathmatch Mode: players may respawn as zombies, humans, or randomly
	* Admin commands: can be performed through an easy ingame menu
	* Special GFX Effects: from the HL Engine
	* Customizable Models and Sounds
	
	It brings many customization through CVARS as well:
	
	* Change nightvision/flashlight colors and size
	* Adjust in-game light level (lightnings available for the dark settings)
	* Set zombies/humans health, speed, gravity, ammo pack rewards, and more
	* Enable unlimited ammo or knockback for weapons
	* Enable random spawning (CSDM-spawns friendly)
	* Separately enable and customize the new gameplay modes to your liking
	
	---------------
	-*- History -*-
	---------------
	
	This project started back on December 2007, when the free infection mods
	around were quite buggy. I wanted to make one on my own, but with little
	to no experience at AMXX scripting, I had to start from the very scratch.
	
	Not after spending over a week looking at many plugins (mainly Zombie
	Swarm) and scarce tutorials, I somehow managed to have all the basic
	stuff working quite well (even though the code was really messy). The
	following months were spent polishing things up and trying to fulfill
	new original ideas, most of them quite worth the hard work.
	
	In the meantime, I had the chance to try the plugin out on a 32 man
	server. This meant a huge progress on development, and after lots of
	testing and bug fixing, the mod turned out to be more than the simple
	infection plugin I had originally planned it to be.
	
	The project has come a long way since, and I'm glad to say I'm finally
	making it freely available. All I'm asking in return is to keep my
	name in the plugin.
	
	-Enjoy!
	
	-------------
	-*- Media -*-
	-------------
	
	* Gameplay Video 1: http://www.youtube.com/watch?v=HFUyF7-_uzw
	* Gameplay Video 2: http://www.youtube.com/watch?v=XByif6Mti-w
	
	--------------------
	-*- Requirements -*-
	--------------------
	
	* Mods: Counter-Strike 1.6 or Condition-Zero
	* AMXX: Version 1.8.0 or later
	* Modules: FakeMeta, HamSandwich
	
	--------------------
	-*- Installation -*-
	--------------------
	
	Just extract all the contents from the .zip file to your server's mod
	directory ("cstrike" or "czero"). Make sure to keep folder structure.
	
	-------------------------------
	-*- CVARS and Customization -*-
	-------------------------------
	
	For a complete and in-depth cvar list, look at the zombieplague.cfg file
	located in the amxmodx\configs directory.
	
	Additionally, you can change player models, sounds, weather effects,
	and some other stuff by looking at the beginning of the .sma for the
	"Plugin Customization" section. Once you're done making your changes,
	remember to recompile!
	
	----------------------
	-*- Admin Commands -*-
	----------------------
	
	The following console commands are available:
	
	* zp_zombie <name> - Turn someone into a Zombie
	* zp_human <name> - Turn someone back to Human
	* zp_nemesis <name> - Turn someone into a Nemesis (*)
	* zp_survivor <name> - Turn someone into a Survivor (*)
	* zp_respawn <name> - Respawn someone
	* zp_swarm - Start Swarm Mode (*)
	* zp_multi - Start Multi Infection (*)
	* zp_plague - Start Plague Mode (*)
	
	(*) - These commands can only be used at round start, that is, when the
	T-Virus notice is shown on screen. 
	
	--------------------
	-*- In-Game Menu -*-
	--------------------
	
	Players can access the mod menu by typing "zpmenu" on chat, or by
	pressing the M ("chooseteam") key. The menu allows players to choose
	their zombie class, buy extra items, get unstuck, or see the ingame
	help. Admins will find an additional option to easily perform all
	console commands.
	
	----------------------
	-*- Infection Mode -*-
	----------------------
	
	On every round players start out as humans, equip themselves with a few
	weapons and grenades, and head to the closest cover they find, knowing
	that one of them is infected with the T-Virus, and will suddenly turn
	into a vicious brain eating creature.
	
	Only little time after, the battle for survival begins. The first zombie
	has to infect as many humans as possible to cluster a numerous zombie
	horde and take over the world.
	
	Maps are set in the dark by default. Humans must use flashlights to light
	their way and spot any enemies. Zombies, on the other hand, have night
	vision but can only attack melee.
	
	--------------------------
	-*- New Gameplay Modes -*-
	--------------------------
	
	* Nemesis:
	   The first zombie may turn into a Nemesis, a powerful fast-moving
	   beast. His goal is to kill every human while sustaining the gunfire.
	
	* Survivor:
	   Everyone became a zombie except him. The survivor gets a machinegun
	   with unlimited ammo and has to stop the never-ending army of undead.
	
	* Multiple Infection:
	   The round starts with many humans infected, so the remaining players
	   will have to act quickly in order to control the situation.
	
	* Swarm Mode:
	   Half of the players turn into zombies, the rest become immune and
	   cannot be infected. It's a battle to death.
	
	* Plague Mode: [bonus]
	   A full armed Survivor and his soldiers are to face Nemesis and
	   his zombie minions. The future of the world is in their hands.
	
	----------------------
	-*- Zombie Classes -*-
	----------------------
	
	From version 4.0 it is possible to create and add an unlimited number of
	zombie classes to the main mod. They can be made as separate plugins,
	by using the provided class registration natives, and then distributed.
	
	By default, five zombie classes are included:
	
	* Classic Zombie: well balanced zombie for beginners.
	* Raptor Zombie: fast moving zombie, but also the weakest.
	* Poison Zombie: light weighed zombie, jumps higher.
	* Big Zombie: slow but strong zombie, with lots of hit points.
	* Leech Zombie: regains additional health when infecting.
	
	-------------------
	-*- Extra Items -*-
	-------------------
	
	From version 4.0 it is possible to add an unlimited number of items
	which can be purchased through the Extra Items menu. All you need
	to do is use the provided item registration natives on your custom
	plugins. You can set the name, the cost in ammo packs, and the team
	the extra item should be available for.
	
	By default there is a number of items already included, listed here:
	
	* Night Vision: makes you able to see in the dark for a single round [Human]
	* T-Virus Antidote: makes you turn back to your human form [Zombie]
	* Zombie Madness: you develop a powerful shield for a short time [Zombie]
	* Infection Bomb: infects anyone within its explosion radius [Zombie]
	
	You are also able to choose some weapons to act as extra items, and change
	ammo packs costs in the Customization Section.
	
	----------------
	-*- Includes -*-
	----------------
	
	From version 3.6, some natives and forwards have been added to ease the
	development of sub-plugins, though you may also find them useful to work
	out compatibility issues with existing plugins.
	
	Look for the zombieplague.inc file in your amxmodx\scripting\include
	folder for the full list.
	
	--------------------
	-*- Contact Info -*-
	--------------------
	
	For the official Zombie Plague thread visit:
	http://forums.alliedmods.net/showthread.php?t=72505
	
	For personal contact you can send me an email at:
	wils_90@hotmail.com
	
	---------------
	-*- Credits -*-
	---------------
	
	* AMXX Dev Team: for all the hard work which made this possible
	* Imperio LNJ Community: for providing the first server where I
	   could really test the plugin and for everyone's support
	* Mini_Midget: for his Zombie Swarm plugin which I used for reference
	   on earliest stages of development
	* Avalanche: for the random spawning code I got from GunGame and the
	   original Frostnades concept that I ported in here
	* cheap_suit: for some modelchange and knockback codes that I got from
	   Biohazard
	* Simon Logic: for the Pain Shock Free feature
	* KRoT@L: for some code from Follow the Wounded, used to make the zombie
	   bleeding feature
	* VEN: for Fakemeta Utilities and some useful stocks
	* RaaPuar and Goltark: for the custom grenade models
	* Orangutanz: for finding the precached modelindex offset
	* ML Translations: DKs/nunoabc/DarkMarcos (bp), JahMan/KWo (pl), DA (de),
	   hleV (lt), darkbad945 (bg), DoPe^ (da), k1nny (fr), shadoww_ro/tuty (ro),
	   NeWbiE' (cz), lOlIl/Seehank (sk), Bridgestone (sv)
	* Everyone who enjoys killing zombies!
	
	------------------
	-*- Change Log -*-
	------------------
	
	* v1.0: (Dec 2007)
	   - First Release: most of the basic stuff done.
	   - Added: random spawning, HP display on hud, lighting setting,
	      simple buy menu, custom nightvision, admin commands, Nemesis
	      and Survivor modes, glow and leap settings for them.
	
	* v2.2: (Jan 2008)
	   - Added: zombie classes, ammo packs system, buying ammo for weapons,
	      custom flashlight, admin skins setting, zombieplague.cfg file
	   - Upgraded: weapons menu improved, flashlight and nightvision colors
	      now customizable, HamSandwich module used to handle damage.
	   - Fixed various bugs.
	
	* v3.0: (Mar 2008)
	   - Added: door removal setting, unstuck feature, human cvars, armor
	      cvar for zombies, weapon knockback, zombie bleeding, flares,
	      extra items (weapons, antidote, infection bomb), pain shock
	      free setting, Multiple Infection and Swarm modes.
	   - Upgraded: dumped Engine, Fun and Cstrike modules, code optimized,
	      new model change method, new gfx effects for zombie infections.
	   - Fixed a bunch of gameplay bugs.
	
	* v3.5: (May 2008)
	   - Added: deathmatch setting with spawn protection, unlimited ammo
	      setting, fire and frost grenades, additional customization cvars,
	      new extra items, help menu.
	   - Upgraded: better objectives removal method, dropped weapons now
	      keep their bpammo, code optimized a lot.
	   - Fixed: no more game commencing bug when last zombie/human leaves,
	      no more hegrenade infection bug, reduced svc_bad errors, and
	      many more.
	
	* v3.6: (Jun 2008)
	   - Added: a few natives and forwards for sub-plugins support,
	      zombie classes can now have their own models, additional
	      knockback customization, bot support, various CVARs.
	   - Upgraded: extra items now supporting grenades and pistols, changed
	      bomb removal method, players can join on survivor/swarm rounds,
	      extended lightnings support to other dark settings.
	   - Fixed: a bunch of minor bugs, and a server crash with CZ bots.
	
	* v4.0: (Aug 2008)
	   - Added: new gameplay mode (Plague Mode), option to remember weapon
	      selection, command to enable/disable the plugin, more CVARs.
	   - Upgraded: redid all the menus, extra items and zombie classes now
	      support external additions, survivor can now have its own model,
	      upgraded model changing method.
	   - Fixed: some bugs with bots, win sounds not being precached.
	
	* v4.1: (Oct 2008)
	   - Added: more CVARs, more customization, more natives, custom
	      leap system, admin zombie models support, and more.
	   - Upgraded: custom grenades compatible with Nade Modes, ambience
	      sounds specific game mode support, optimized bandwidth usage
	      for temp ents, admin commands logged with IP and SteamID.
	   - Fixed: lots of bugs (some minor, some not)
	
=================================================================================*/

#include <amxmodx>
#include <amxmisc>
#include <fakemeta>
#include <hamsandwich>
#include <xs>

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// Access Flags Required (check CMDACCESS.INI for console commands)
const ACCESS_FLAG = ADMIN_BAN // to access the admin menu
const ACCESS_FLAG2 = ADMIN_RCON // to turn the mod on/off
const ACCESS_FLAG3 = ADMIN_BAN // to get admin models

// Player Models (randomly chosen, add as many as you want)
new const model_nemesis[][] = { "zombie_source" } // Nemesis
new const model_survivor[][] = { "leet", "sas" } // Survivor
new const model_human[][] = { "arctic", "guerilla", "leet", "terror", "gign", "gsg9", "sas", "urban" } // Human
new const model_admin[][] = { "vip" } // Admin (human)
new const model_admin_zombie[][] = { "zombie_source" } // Admin (zombie)

// Weapon Models
new const model_vknife_human[] = { "models/v_knife.mdl" }
new const model_vknife_nemesis[] = { "models/zombie_plague/v_knife_zombie.mdl" }
new const model_vm249_survivor[] = { "models/v_m249.mdl" }
new const model_grenade_infect[] = { "models/zombie_plague/v_grenade_infect.mdl" }
new const model_grenade_fire[] = { "models/zombie_plague/v_grenade_fire.mdl" }
new const model_grenade_frost[] = { "models/zombie_plague/v_grenade_frost.mdl" }
new const model_grenade_flare[] = { "models/zombie_plague/v_grenade_flare.mdl" }

// Grenade Sprites
new const sprite_grenade_trail[] = { "sprites/laserbeam.spr" }
new const sprite_grenade_ring[] = { "sprites/shockwave.spr" }
new const sprite_grenade_fire[] = { "sprites/flame.spr" }
new const sprite_grenade_smoke[] = { "sprites/black_smoke3.spr" }
new const sprite_grenade_glass[] = { "models/glassgibs.mdl" }

// Sound list (randomly chosen, add as many as you want)
new const sound_win_zombies[][] = { "ambience/the_horror1.wav", "ambience/the_horror3.wav", "ambience/the_horror4.wav" }
new const sound_win_humans[][] = { "zombie_plague/win_humans1.wav", "zombie_plague/win_humans2.wav" }
new const sound_win_no_one[][] = { "ambience/3dmstart.wav" }
new const zombie_infect[][] = { "zombie_plague/zombie_infec1.wav", "zombie_plague/zombie_infec2.wav", "zombie_plague/zombie_infec3.wav", "scientist/c1a0_sci_catscream.wav", "scientist/scream01.wav" }
new const zombie_pain[][] = { "zombie_plague/zombie_pain1.wav", "zombie_plague/zombie_pain2.wav", "zombie_plague/zombie_pain3.wav", "zombie_plague/zombie_pain4.wav", "zombie_plague/zombie_pain5.wav" }
new const nemesis_pain[][] = { "zombie_plague/nemesis_pain1.wav", "zombie_plague/nemesis_pain2.wav", "zombie_plague/nemesis_pain3.wav" }
new const zombie_die[][] = { "zombie_plague/zombie_die1.wav", "zombie_plague/zombie_die2.wav", "zombie_plague/zombie_die3.wav", "zombie_plague/zombie_die4.wav", "zombie_plague/zombie_die5.wav" }
new const zombie_fall[][] = { "zombie_plague/zombie_fall1.wav" }
new const zombie_miss_slash[][] = { "weapons/knife_slash1.wav", "weapons/knife_slash2.wav" }
new const zombie_miss_wall[][] = { "weapons/knife_hitwall1.wav" }
new const zombie_hit_normal[][] = { "weapons/knife_hit1.wav", "weapons/knife_hit2.wav", "weapons/knife_hit3.wav", "weapons/knife_hit4.wav" }
new const zombie_hit_stab[][] = { "weapons/knife_stab.wav" }
new const zombie_idle[][] = { "nihilanth/nil_now_die.wav", "nihilanth/nil_slaves.wav", "nihilanth/nil_alone.wav", "zombie_plague/zombie_brains1.wav", "zombie_plague/zombie_brains2.wav" }
new const zombie_idle_last[][] = { "nihilanth/nil_thelast.wav" }
new const zombie_madness[][] = { "zombie_plague/zombie_madness1.wav" }
new const sound_nemesis[][] = { "zombie_plague/nemesis1.wav", "zombie_plague/nemesis2.wav" }
new const sound_survivor[][] = { "zombie_plague/survivor1.wav", "zombie_plague/survivor2.wav" }
new const sound_swarm[][] = { "ambience/the_horror2.wav" }
new const sound_multi[][] = { "ambience/the_horror2.wav" }
new const sound_plague[][] = { "zombie_plague/nemesis1.wav", "zombie_plague/survivor1.wav" }
new const grenade_infect[][] = { "zombie_plague/grenade_infect.wav" }
new const grenade_infect_player[][] = { "scientist/scream20.wav", "scientist/scream22.wav", "scientist/scream05.wav" }
new const grenade_fire[][] = { "zombie_plague/grenade_explode.wav" }
new const grenade_fire_player[][] = { "zombie_plague/zombie_burn3.wav","zombie_plague/zombie_burn4.wav","zombie_plague/zombie_burn5.wav","zombie_plague/zombie_burn6.wav","zombie_plague/zombie_burn7.wav" }
new const grenade_frost[][] = { "warcraft3/frostnova.wav" }
new const grenade_frost_player[][] = { "warcraft3/impalehit.wav" }
new const grenade_frost_break[][] = { "warcraft3/impalelaunch1.wav" }
new const grenade_flare[][] = { "items/nvg_on.wav" }
new const sound_antidote[][] = { "items/smallmedkit1.wav" }
new const sound_thunder[][] = { "zombie_plague/thunder1.wav", "zombie_plague/thunder2.wav" }

// Uncomment the following line to enable ambience sounds
#define AMBIENCE_SOUNDS

#if defined AMBIENCE_SOUNDS // Ambience Sounds List (only .wav and .mp3 formats supported)
// Infection Rounds
new const sound_ambience1[][] = { "zombie_plague/ambience.wav" } // sounds (played randomly)
new const Float:sound_ambience1_duration[] = { 17.0 } // duration in seconds of each sound
// Nemesis Rounds
new const sound_ambience2[][] = { "zombie_plague/ambience.wav" }
new const Float:sound_ambience2_duration[] = { 17.0 }
// Survivor Rounds
new const sound_ambience3[][] = { "zombie_plague/ambience.wav" }
new const Float:sound_ambience3_duration[] = { 17.0 }
// Swarm Rounds
new const sound_ambience4[][] = { "zombie_plague/ambience.wav" }
new const Float:sound_ambience4_duration[] = { 17.0 }
// Plague Rounds
new const sound_ambience5[][] = { "zombie_plague/ambience.wav" }
new const Float:sound_ambience5_duration[] = { 17.0 }
#endif

// Buy Menu: Primary and Secondary Weapons
new const g_primary_items[][] = { "weapon_galil", "weapon_famas", "weapon_m4a1", "weapon_ak47", "weapon_sg552", "weapon_aug", "weapon_scout",
				"weapon_m3", "weapon_xm1014", "weapon_tmp", "weapon_mac10", "weapon_ump45", "weapon_mp5navy", "weapon_p90" }
new const g_secondary_items[][] = { "weapon_glock18", "weapon_usp", "weapon_p228", "weapon_deagle", "weapon_fiveseven", "weapon_elite" }

// Additional Items to give after buying all weapons (e.g. grenades)
new const g_additional_items[][] = { "weapon_hegrenade", "weapon_flashbang", "weapon_smokegrenade" }

// Extra Items: Weapons and their costs
new const g_extra_names[][] = { "Napalm Nade", "Frost Nade", "Flare", "AWP Magnum Sniper", "M249 Para Machinegun", "SG550 Auto-Sniper", "G3SG1 Auto-Sniper" }
new const g_extra_items[][] = { "weapon_hegrenade", "weapon_flashbang", "weapon_smokegrenade", "weapon_awp", "weapon_m249", "weapon_sg550", "weapon_g3sg1" }
new const g_extra_costs[] = { 6, 6, 6, 8, 10, 12, 12 }

// Extra Items: costs for Night Vision, Antidote, Zombie Madness, and Infection Bomb
// UZI_BEGIN: adjust costs of extra items.
new const g_extra_costs2[] = { 10, 10, 15, 15 }
// UZI_END.

// Weather Effects: uncomment a line to have the desired effect
#define AMBIENCE_RAIN // Rain
#define AMBIENCE_SNOW // Snow
//#define AMBIENCE_FOG // Fog

#if defined AMBIENCE_FOG // Fog Customization (if enabled)
new const FOG_DENSITY[] = "0.0018" // Density
new const FOG_COLOR[] = "128 128 128" // Color: Red Green Blue
#endif

// Sky Names (randomly chosen, add as many as you want)
new const skynames[][] = { "space" }

// Lightning Lights Cycle
new const lights_thunder1[][] = { "i" ,"j", "k", "l", "m", "n", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"}
new const lights_thunder2[][] = { "k", "l", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a", "a", "b", "c", "d", "e", "d", "c", "b", "a"}
new const lights_thunder3[][] = { "b", "c", "d", "e", "f", "e", "d", "c", "i" ,"j", "k", "l", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"}

// Decal List for Zombie Bloodstains/Footsteps
new const zombie_decals[] = { 99, 107, 108, 184, 185, 186, 187, 188, 189 }

// Knockback Power values for weapons
// Note: to disable knockback power on a specific weapon use a negative value
new const Float:kb_weapon_power[] = 
{
	-1.0,	// ---
	2.4,	// P228
	-1.0,	// ---
	6.5,	// SCOUT
	-1.0,	// ---
	8.0,	// XM1014
	-1.0,	// ---
	2.3,	// MAC10
	5.0,	// AUG
	-1.0,	// ---
	2.4,	// ELITE
	2.0,	// FIVESEVEN
	2.4,	// UMP45
	5.3,	// SG550
	5.5,	// GALIL
	5.5,	// FAMAS
	2.2,	// USP
	2.0,	// GLOCK18
	10.0,	// AWP
	2.5,	// MP5NAVY
	5.2,	// M249
	8.0,	// M3
	5.0,	// M4A1
	2.4,	// TMP
	6.5,	// G3SG1
	-1.0,	// ---
	5.3,	// DEAGLE
	5.0,	// SG552
	6.0,	// AK47
	-1.0,	// ---
	2.0	// P90
}

// Dynamic Stuff Limiters (increase if needed)
const MAX_EXTRA_ITEMS = 30
const MAX_ZOMBIE_CLASSSES = 20
const MAX_CSDM_SPAWNS = 128
const MAX_STATS_SAVED = 64
const MAX_MODELS_NEMESIS = 10
const MAX_MODELS_SURVIVOR = 10
const MAX_MODELS_HUMAN = 20
const MAX_MODELS_ADM_HUMAN = 10
const MAX_MODELS_ADM_ZOMBIE = 10

// Objective entites and anything that would affect plugin gameplay
new const g_objective_ents[][] = { "func_bomb_target", "info_bomb_target", "info_vip_start", "func_vip_safetyzone", "func_escapezone", "hostage_entity",
		"monster_scientist", "func_hostage_rescue", "info_hostage_rescue", "env_fog", "env_rain", "env_snow", "item_longjump", "func_vehicle" }

// ***************************************************************
// *** If you experience many SVC_BAD kicks, try the following ***
// ***************************************************************
// 1. Increase the delay between model changes here: (eg. set it to 0.5)
const Float:MODELCHANGE_DELAY = 0.2
// 2. If the above doesn't help, uncomment the following line: (experimental!)
//#define HANDLE_MODELS_ON_SEPARATE_ENT

// Alternate: This makes the plugin set the model index serverside offset
// for accurate hitboxes and might also help with svc_bad (untested)
// Note: Make sure your models don't have messed up hitboxes or else
// this setting may cause your server insane cpu usage and LAG!
//#define SET_MODELINDEX_OFFSET

// ---------------------------------------------------------------
// ------------------ Customization ends here!! ------------------
// ---------------------------------------------------------------

/*================================================================================
 [Offsets and Constants]
=================================================================================*/

// Plugin Version
new const PLUGIN_VERSION[] = "4.1"

// Task offsets
enum (+= 100)
{
	TASK_MODEL = 2000,
	TASK_TEAM,
	TASK_SPAWN,
	TASK_BLOOD,
	TASK_NVISION,
	TASK_FLASH,
	TASK_CHARGE,
	TASK_SHOWHUD,
	TASK_NADES,
	TASK_MAKEZOMBIE,
	TASK_WELCOMEMSG,
	TASK_THUNDER_PRE,
	TASK_THUNDER,
	TASK_AMBIENCESOUNDS,
	TASK_AMBIENCESOUNDSSTOP,
	TASK_LIGHTING
}

// IDs inside tasks
#define ID_MODEL (taskid - TASK_MODEL)
#define ID_TEAM (taskid - TASK_TEAM)
#define ID_SPAWN (taskid - TASK_SPAWN)
#define ID_BLOOD (taskid - TASK_BLOOD)
#define ID_NVISION (taskid - TASK_NVISION)
#define ID_FLASH (taskid - TASK_FLASH)
#define ID_CHARGE (taskid - TASK_CHARGE)
#define ID_SHOWHUD (taskid - TASK_SHOWHUD)

// Flare and flame tasks
#define FLARE_ENTITY args[0]
#define FLARE_DURATION args[1]
#define FLARE_R args[2]
#define FLARE_G args[3]
#define FLARE_B args[4]
#define FLAME_DURATION args[0]

// For player list menu handlers
#define PL_STARTID g_menu_data[id][0]
#define PL_ACTION g_menu_data[id][1]
#define PL_SELECTION (g_menu_data[id][0]+key+1)

// For weapon buy menu handlers
#define WPN_STARTID g_menu_data[id][2]
#define WPN_MAXIDS (sizeof g_primary_items)
#define WPN_SELECTION (g_menu_data[id][2]+key)
#define WPN_AUTO_ON g_menu_data[id][3]
#define WPN_AUTO_PRI g_menu_data[id][4]
#define WPN_AUTO_SEC g_menu_data[id][5]

// For extra items menu handlers
#define EXTRAS_STARTID g_menu_data[id][6]
#define EXTRAS_SELECTION (g_menu_data[id][6]+key)
#define EXTRAS_CUSTOM_STARTID (4+sizeof g_extra_names)

// For zombie class menu handlers
#define ZCLASSES_STARTID g_menu_data[id][7]
#define ZCLASSES_SELECTION (g_menu_data[id][7]+key)

// Menu selections
const MENU_KEY_AUTOSELECT = 7
const MENU_KEY_BACK = 7
const MENU_KEY_NEXT = 8
const MENU_KEY_EXIT = 9

// Hard coded extra items
enum
{
	EXTRA_NVISION = 0,
	EXTRA_ANTIDOTE,
	EXTRA_MADNESS,
	EXTRA_INFBOMB,
	EXTRA_WEAPONS_STARTID
}

// Game modes
enum
{
	MODE_NONE = 0,
	MODE_INFECTION,
	MODE_NEMESIS,
	MODE_SURVIVOR,
	MODE_SWARM,
	MODE_MULTI,
	MODE_PLAGUE
}

// ZP Teams
enum
{
	ZP_TEAM_ANY = 0,
	ZP_TEAM_ZOMBIE,
	ZP_TEAM_HUMAN
}

// Zombie classes
const ZCLASS_NONE = -1

// HUD messages
const Float:HUD_EVENT_X = -1.0
const Float:HUD_EVENT_Y = 0.17
const Float:HUD_INFECT_X = 0.05
const Float:HUD_INFECT_Y = 0.45
const Float:HUD_SPECT_X = 0.6
const Float:HUD_SPECT_Y = 0.8
const Float:HUD_STATS_X = 0.02
const Float:HUD_STATS_Y = 0.9

// CS Offsets
#if cellbits == 32
const OFFSET_CSTEAMS = 114
const OFFSET_CSMONEY = 115
const OFFSET_NVGOGGLES = 129
const OFFSET_ZOOMTYPE = 363
const OFFSET_CSDEATHS = 444
const OFFSET_AWM_AMMO  = 377 
const OFFSET_SCOUT_AMMO = 378
const OFFSET_PARA_AMMO = 379
const OFFSET_FAMAS_AMMO = 380
const OFFSET_M3_AMMO = 381
const OFFSET_USP_AMMO = 382
const OFFSET_FIVESEVEN_AMMO = 383
const OFFSET_DEAGLE_AMMO = 384
const OFFSET_P228_AMMO = 385
const OFFSET_GLOCK_AMMO = 386
const OFFSET_FLASH_AMMO = 387
const OFFSET_HE_AMMO = 388
const OFFSET_SMOKE_AMMO = 389
const OFFSET_C4_AMMO = 390
const OFFSET_CLIPAMMO = 51
#else
const OFFSET_CSTEAMS = 139
const OFFSET_CSMONEY = 140
const OFFSET_NVGOGGLES = 155
const OFFSET_ZOOMTYPE = 402
const OFFSET_CSDEATHS = 493
const OFFSET_AWM_AMMO  = 426
const OFFSET_SCOUT_AMMO = 427
const OFFSET_PARA_AMMO = 428
const OFFSET_FAMAS_AMMO = 429
const OFFSET_M3_AMMO = 430
const OFFSET_USP_AMMO = 431
const OFFSET_FIVESEVEN_AMMO = 432
const OFFSET_DEAGLE_AMMO = 433
const OFFSET_P228_AMMO = 434
const OFFSET_GLOCK_AMMO = 435
const OFFSET_FLASH_AMMO = 46
const OFFSET_HE_AMMO = 437
const OFFSET_SMOKE_AMMO = 438
const OFFSET_C4_AMMO = 439
const OFFSET_CLIPAMMO = 65
#endif

const OFFSET_LINUX = 5 // offsets 5 higher in Linux builds
const OFFSET_LINUX_WEAPONS = 4 // weapon offsets are only 4 steps higher on Linux

// Additional win32 offsets
const OFFSET_MODELINDEX = 491 // by Orangutanz

// CS Teams
enum
{
	CS_TEAM_UNASSIGNED = 0,
	CS_TEAM_T,
	CS_TEAM_CT,
	CS_TEAM_SPECTATOR
}
new const TEAMNAMES[][] = { "UNASSIGNED", "TERRORIST", "CT", "SPECTATOR" }

// Some constants
const HIDE_MONEY = (1<<5)
const ATTRIB_BOMB = (1<<1)
const UNIT_SECOND = (1<<12)
const DMG_HEGRENADE = (1<<24)
const CS_NO_ZOOM = 0x5A
const HAS_NVGOGGLES = (1<<0)
const IMPULSE_FLASHLIGHT = 100
const USE_USING = 2
const USE_STOPPED = 0
const STEPTIME_SILENT = 999
const BREAK_GLASS = 0x01
const FFADE_IN = 0x0000
const PEV_SPEC_TARGET = pev_iuser2

// Max BP ammo for weapons
new const MAXBPAMMO[] = { -1, 52, -1, 90, 1, 32, 1, 100, 90, 1, 120, 100, 100, 90, 90, 90, 100, 120,
			30, 120, 200, 32, 90, 120, 90, 2, 35, 90, 90, -1, 100 }

// Max Clip for weapons
new const MAXCLIP[] = { -1, 13, -1, 10, -1, 7, -1, 30, 30, -1, 30, 20, 25, 30, 35, 25, 12, 20,
			10, 30, 100, 8, 30, 30, 20, -1, 7, 30, 30, -1, 50 }

// Amount of ammo to give when buying additional clips for weapons
new const BUYAMMO[] = { -1, 13, -1, 30, -1, 8, -1, 12, 30, -1, 30, 50, 12, 30, 30, 30, 12, 30,
			10, 30, 30, 8, 30, 30, 30, -1, 7, 30, 30, -1, 50 }

// Ammo IDs for weapons
new const AMMOID[] = { -1, 9, -1, 2, 12, 5, 14, 6, 4, 13, 10, 7, 6, 4, 4, 4, 6, 10,
			1, 10, 3, 5, 4, 10, 2, 11, 8, 4, 2, -1, 7 }

// Primary and Secondary Weapon Names
new const WEAPONNAMES[][] = { "", "P228 Compact", "", "Schmidt Scout", "", "XM1014 M4", "", "Ingram MAC-10", "Steyr AUG A1",
			"", "Dual Elite Berettas", "FiveseveN", "UMP 45", "SG-550 Auto-Sniper", "IMI Galil", "Famas",
			"USP .45 ACP Tactical", "Glock 18C", "AWP Magnum Sniper", "MP5 Navy", "M249 Para Machinegun",
			"M3 Super 90", "M4A1 Carbine", "Schmidt TMP", "G3SG1 Auto-Sniper", "", "Desert Eagle .50 AE",
			"SG-552 Commando", "AK-47 Kalashnikov", "", "ES P90" }

// CS sounds
new const sound_flashlight[] = "items/flashlight1.wav"
new const sound_buyammo[] = "items/9mmclip1.wav"
new const sound_armorhit[] = "player/bhit_helmet-1.wav"

// Explosion radius for custom grenades
const Float:NADE_EXPLOSION_RADIUS = 240.0

// pev_ field used to store additional ammo on weapons
const PEV_ADDITIONAL_AMMO = pev_iuser1

// pev_ field used to store custom nade types and their values
const PEV_NADE_TYPE = pev_flTimeStepSound
const NADE_TYPE_INFECTION = 1111
const NADE_TYPE_NAPALM = 2222
const NADE_TYPE_FROST = 3333
const NADE_TYPE_FLARE = 4444
const PEV_FLARE_COLOR = pev_punchangle

// Weapon bitsums
const PRIMARY_WEAPONS_BIT_SUM = (1<<CSW_SCOUT)|(1<<CSW_XM1014)|(1<<CSW_MAC10)|(1<<CSW_AUG)|(1<<CSW_UMP45)|(1<<CSW_SG550)|(1<<CSW_GALIL)|(1<<CSW_FAMAS)|(1<<CSW_AWP)|(1<<CSW_MP5NAVY)|(1<<CSW_M249)|(1<<CSW_M3)|(1<<CSW_M4A1)|(1<<CSW_TMP)|(1<<CSW_G3SG1)|(1<<CSW_SG552)|(1<<CSW_AK47)|(1<<CSW_P90)
const SECONDARY_WEAPONS_BIT_SUM = (1<<CSW_P228)|(1<<CSW_ELITE)|(1<<CSW_FIVESEVEN)|(1<<CSW_USP)|(1<<CSW_GLOCK18)|(1<<CSW_DEAGLE)

// Allowed weapons for zombies (added grenades/bomb for sub-plugin support, since they shouldn't be getting them aynway)
const ZOMBIE_ALLOWED_WEAPONS_BITSUM = (1<<CSW_KNIFE)|(1<<CSW_HEGRENADE)|(1<<CSW_FLASHBANG)|(1<<CSW_SMOKEGRENADE)|(1<<CSW_C4)

#if defined HANDLE_MODELS_ON_SEPARATE_ENT
// Classnames for separate model entities
new const MODEL_ENT_CLASSNAME[] = "player_model"
new const WEAPON_ENT_CLASSNAME[] = "weapon_model"
#endif

// Menu keys
const KEYSMENU = (1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<4)|(1<<5)|(1<<6)|(1<<7)|(1<<8)|(1<<9)

/*================================================================================
 [Global Variables]
=================================================================================*/

// Stupid compiler
#pragma unused g_models_i

// Player vars
new g_zombie[33] // is zombie
new g_nemesis[33] // is nemesis
new g_survivor[33] // is surivor
new g_firstzombie[33] // is the first zombie
new g_lastzombie[33] // is last zombie
new g_lasthuman[33] // is last human
new g_frozen[33] // is frozen (can't move)
new g_nodamage[33] // has spawn protection/zombie madness
new g_respawn_as_zombie[33] // should respawn as zombie
new g_nvision[33] // has night vision
new g_nvisionenabled[33] // has night vision turned on
new g_zombieclass[33] // zombie class
new g_zombieclassnext[33] // zombie class for next infection
new g_flashlight[33] // has custom flashlight turned on
new g_flashbattery[33] = { 100, ... } // custom flashlight battery
new g_currentweapon[33] // current weapon the player is holding
new g_canbuy[33] // is allowed to buy a new weapon through the menu
new g_ammopacks[33] // ammo pack count
new g_damagedealt[33] // damage dealt to zombies (used to calculate ammo packs reward)
new g_spec_target[33] // last spectator target (for game nvg fix)
new g_spec_first_person[33] // was player spectating on first person (for game nvg fix)
new g_restorevel[33], Float:g_velocity[33][3] // Pain Shock Free vars
new Float:g_lastleaptime[33] // time leap was last used
new Float:g_lastflashtime[33] // time flashlight was last turned on/off
new g_switchingteam[33] // is switching team
new g_playermodel[33][32] // current model's short name [player][model]
new g_menu_data[33][8] // data for various menus
#if defined HANDLE_MODELS_ON_SEPARATE_ENT
new g_ent_playermodel[33] // player model entity
new g_ent_weaponmodel[33] // weapon model entity
#endif

// Game vars
new g_newround // new round starting
new g_endround // round ended
new g_nemround // nemesis round
new g_survround // survivor round
new g_swarmround // swarm round
new g_plagueround // plague round
new g_lastmode // last played mode
new g_scorezombies, g_scorehumans // team scores
new g_spawnCount // available spawn points counter
new Float:g_spawns[MAX_CSDM_SPAWNS][3] // spawn points data
new g_lights_i // lightning current lights counter
new Float:g_models_i // delay between Model Change messages
new Float:g_teams_i // delay between Team Change messages
new g_MsgSync, g_MsgSync2 // message sync objects
new g_trailSpr, g_exploSpr, g_flameSpr, g_smokeSpr, g_glassSpr // grenade sprites
new g_modname[32] // for formating the mod name
new g_freezetime // whether it's freeze time
new g_maxplayers // max players counter
new g_czero // whether we are running on a CZ server
new g_hamczbots // whether ham forwards are registered for CZ bots
new g_fwSpawn // spawn forward handle

// Precached model indexes
new g_modelindex_nemesis[MAX_MODELS_NEMESIS]
new g_modelindex_survivor[MAX_MODELS_SURVIVOR]
new g_modelindex_human[MAX_MODELS_HUMAN]
new g_modelindex_admin[MAX_MODELS_ADM_HUMAN]
new g_modelindex_admin_zombie[MAX_MODELS_ADM_ZOMBIE]

// Some forward handlers
new g_fwRoundStart, g_fwRoundEnd, g_fwUserInfected_pre, g_fwUserInfected_post,
g_fwUserHumanized_pre, g_fwUserHumanized_post, g_fwExtraItemSelected, g_fwDummyResult

// Temporary Database vars (used to restore players stats in case they get disconnected)
new db_name[MAX_STATS_SAVED][32] // player name
new db_ammopacks[MAX_STATS_SAVED] // ammo pack count
new db_zombieclass[MAX_STATS_SAVED] // zombie class
new db_slot_i // additional saved slots counter (should start on maxplayers+1)

// Extra Items vars
new g_extraitem_name[MAX_EXTRA_ITEMS][32] // caption
new g_extraitem_cost[MAX_EXTRA_ITEMS] // cost
new g_extraitem_team[MAX_EXTRA_ITEMS] // team
new g_extraitem_i // loaded extra items counter

// Zombie Classes vars
new g_zclass_name[MAX_ZOMBIE_CLASSSES][32] // name
new g_zclass_info[MAX_ZOMBIE_CLASSSES][32] // description
new g_zclass_model[MAX_ZOMBIE_CLASSSES][32] // player model
new g_zclass_modelindex[MAX_ZOMBIE_CLASSSES] // model index
new g_zclass_clawmodel[MAX_ZOMBIE_CLASSSES][32] // claw model
new g_zclass_hp[MAX_ZOMBIE_CLASSSES] // health
new g_zclass_spd[MAX_ZOMBIE_CLASSSES] // speed
new Float:g_zclass_grav[MAX_ZOMBIE_CLASSSES] // gravity
new Float:g_zclass_kb[MAX_ZOMBIE_CLASSSES] // knockback
new g_zclass_i // loaded zombie classes counter

// Message IDs vars
new g_msgScoreInfo, g_msgNVGToggle, g_msgScoreAttrib,  g_msgAmmoPickup,
g_msgScreenFade, g_msgDeathMsg, g_msgSetFOV, g_msgFlashlight, g_msgFlashBat,
g_msgTeamInfo, g_msgDamage, g_msgHideWeapon, g_msgCrosshair, g_msgSayText

// CVAR pointers
new cvar_lighting, cvar_zombiefov, cvar_plague, cvar_plaguechance, cvar_zombiefirsthp,
cvar_removemoney, cvar_thunder,  cvar_zombiebonushp, cvar_deathmatch, cvar_nem,
cvar_nemchance, cvar_nemhp, cvar_nemglow,  cvar_surv, cvar_cnvg, cvar_hitzones,
cvar_nemgravity, cvar_flashsize, cvar_ammodamage, cvar_zombiearmor,cvar_survpainfree,
cvar_nempainfree, cvar_nemspd, cvar_survchance, cvar_survhp, cvar_survspd, cvar_humanspd,
cvar_swarmchance, cvar_flashdrain, cvar_zombiebleeding, cvar_removedoors, cvar_cflash,
cvar_randspawn, cvar_multi, cvar_multichance, cvar_infammo, cvar_swarm, cvar_ammoinfect,
cvar_toggle, cvar_knockbackpower, cvar_freezeduration, cvar_triggered, cvar_flashcharge,
cvar_firegrenades, cvar_frostgrenades, cvar_survgravity, cvar_humanhp, cvar_logcommands,
cvar_humangravity, cvar_spawnprotection,  cvar_nvgsize, cvar_flareduration, cvar_zclasses,
cvar_extraitems, cvar_showactivity, cvar_humanlasthp, cvar_nemignorefrags, cvar_warmup,
cvar_flashdist, cvar_flarecolor, cvar_survignorefrags, cvar_fireduration, cvar_firedamage,
cvar_flaregrenades, cvar_knockbackducking, cvar_knockbackdamage, cvar_knockbackzvel,
cvar_multiratio, cvar_flaresize, cvar_spawndelay, cvar_extra_antidote, cvar_survglow,
cvar_extra_weapons, cvar_extra_nvision,  cvar_extra_madness, cvar_survaura, cvar_nvggive,
cvar_botquota, cvar_buycustom, cvar_zombiepainfree, cvar_fireslowdown, cvar_blockpushables,
cvar_nemignoreammo, cvar_survignoreammo, cvar_nemaura, cvar_extra_infbomb, cvar_knockback,
cvar_fragsinfect, cvar_fragskill, cvar_humanarmor, cvar_zombiesilent, cvar_removedropped,
cvar_plagueratio, cvar_blocksuicide, cvar_knockbackdist, cvar_nemdamage, cvar_leapzombies,
cvar_leapzombiesforce, cvar_leapzombiesheight, cvar_leapzombiescooldown, cvar_leapnemesis,
cvar_leapnemesisforce, cvar_leapnemesisheight, cvar_leapnemesiscooldown, cvar_leapsurvivor,
cvar_leapsurvivorforce, cvar_leapsurvivorheight, cvar_leapsurvivorcooldown,
cvar_respawnonsuicide, cvar_respawnafterlast, cvar_nemminplayers, cvar_survminplayers,
cvar_swarmminplayers, cvar_multiminplayers, cvar_plagueminplayers, cvar_statssave,
cvar_adminmodelshuman, cvar_adminmodelszombie, cvar_preventconsecutive,
cvar_nvgcolor[3], cvar_nemnvgcolor[3], cvar_humnvgcolor[3], cvar_flashcolor[3]

/*================================================================================
 [Natives, Precache and Init]
=================================================================================*/

public plugin_natives()
{
	// Player specific natives
	register_native("zp_get_user_zombie", "native_get_user_zombie", 1)
	register_native("zp_get_user_nemesis", "native_get_user_nemesis", 1)
	register_native("zp_get_user_survivor", "native_get_user_survivor", 1)
	register_native("zp_get_user_first_zombie", "native_get_user_first_zombie", 1)
	register_native("zp_get_user_last_zombie", "native_get_user_last_zombie", 1)
	register_native("zp_get_user_last_human", "native_get_user_last_human", 1)
	register_native("zp_get_user_zombie_class", "native_get_user_zombie_class", 1)
	register_native("zp_set_user_zombie_class", "native_set_user_zombie_class", 1)
	register_native("zp_get_user_ammo_packs", "native_get_user_ammo_packs", 1)
	register_native("zp_set_user_ammo_packs", "native_set_user_ammo_packs", 1)
	register_native("zp_get_zombie_maxhealth", "native_get_zombie_maxhealth", 1)
	register_native("zp_get_user_batteries", "native_get_user_batteries", 1)
	register_native("zp_set_user_batteries", "native_set_user_batteries", 1)
	register_native("zp_infect_user", "native_infect_user", 1)
	register_native("zp_disinfect_user", "native_disinfect_user", 1)
	register_native("zp_respawn_user", "native_respawn_user", 1)
	
	// Round natives
	register_native("zp_has_round_started", "native_has_round_started", 1)
	register_native("zp_is_nemesis_round", "native_is_nemesis_round", 1)
	register_native("zp_is_survivor_round", "native_is_survivor_round", 1)
	register_native("zp_is_swarm_round", "native_is_swarm_round", 1)
	register_native("zp_is_plague_round", "native_is_plague_round", 1)
	
	// External additions natives
	register_native("zp_register_extra_item", "native_register_extra_item", 1)
	register_native("zp_register_zombie_class", "native_register_zombie_class", 1)
	
	// Load up the hard coded extra items
	native_register_extra_item2("nvision", g_extra_costs2[0], ZP_TEAM_HUMAN)
	native_register_extra_item2("antidote", g_extra_costs2[1], ZP_TEAM_ZOMBIE)
	native_register_extra_item2("madness", g_extra_costs2[2], ZP_TEAM_ZOMBIE)
	native_register_extra_item2("infbomb", g_extra_costs2[3], ZP_TEAM_ZOMBIE)
	for (new i = 0; i < sizeof g_extra_names; i++) // weapons
		native_register_extra_item2(g_extra_names[i], g_extra_costs[i], ZP_TEAM_HUMAN)
}

public plugin_precache()
{
	// To switch plugin on/off
	register_concmd("zp_toggle", "cmd_toggle", ACCESS_FLAG2, "<1/0> - Enable/Disable Zombie Plague (will restart the current map)")
	cvar_toggle = register_cvar("zp_on", "1")
	
	// Plugin disabled?
	if (!get_pcvar_num(cvar_toggle)) return;
	
	new i, playermodel[100]
	
	// Custom player models
	for (i = 0; i < sizeof model_nemesis; i++)
	{
		formatex(playermodel, sizeof playermodel - 1, "models/player/%s/%s.mdl", model_nemesis[i], model_nemesis[i])
		g_modelindex_nemesis[i] = engfunc(EngFunc_PrecacheModel, playermodel)
	}
	for (i = 0; i < sizeof model_survivor; i++)
	{
		formatex(playermodel, sizeof playermodel - 1, "models/player/%s/%s.mdl", model_survivor[i], model_survivor[i])
		g_modelindex_survivor[i] = engfunc(EngFunc_PrecacheModel, playermodel)
	}
	for (i = 0; i < sizeof model_human; i++)
	{
		formatex(playermodel, sizeof playermodel - 1, "models/player/%s/%s.mdl", model_human[i], model_human[i])
		g_modelindex_human[i] = engfunc(EngFunc_PrecacheModel, playermodel)
	}
	for (i = 0; i < sizeof model_admin; i++)
	{
		formatex(playermodel, sizeof playermodel - 1, "models/player/%s/%s.mdl", model_admin[i], model_admin[i])
		g_modelindex_admin[i] = engfunc(EngFunc_PrecacheModel, playermodel)
	}
	for (i = 0; i < sizeof model_admin_zombie; i++)
	{
		formatex(playermodel, sizeof playermodel - 1, "models/player/%s/%s.mdl", model_admin_zombie[i], model_admin_zombie[i])
		g_modelindex_admin_zombie[i] = engfunc(EngFunc_PrecacheModel, playermodel)
	}
	
	// Custom weapon models
	engfunc(EngFunc_PrecacheModel, model_vknife_human)
	engfunc(EngFunc_PrecacheModel, model_vknife_nemesis)
	engfunc(EngFunc_PrecacheModel, model_vm249_survivor)
	engfunc(EngFunc_PrecacheModel, model_grenade_infect)
	engfunc(EngFunc_PrecacheModel, model_grenade_fire)
	engfunc(EngFunc_PrecacheModel, model_grenade_frost)
	engfunc(EngFunc_PrecacheModel, model_grenade_flare)
	
	// Custom sounds
	for (i = 0; i < sizeof sound_win_zombies; i++)
		engfunc(EngFunc_PrecacheSound, sound_win_zombies[i])
	for (i = 0; i < sizeof sound_win_humans; i++)
		engfunc(EngFunc_PrecacheSound, sound_win_humans[i])
	for (i = 0; i < sizeof sound_win_no_one; i++)
		engfunc(EngFunc_PrecacheSound, sound_win_no_one[i])
	for (i = 0; i < sizeof zombie_infect; i++)
		engfunc(EngFunc_PrecacheSound, zombie_infect[i])
	for (i = 0; i < sizeof zombie_pain; i++)
		engfunc(EngFunc_PrecacheSound, zombie_pain[i])
	for (i = 0; i < sizeof nemesis_pain; i++)
		engfunc(EngFunc_PrecacheSound, nemesis_pain[i])
	for (i = 0; i < sizeof zombie_die; i++)
		engfunc(EngFunc_PrecacheSound, zombie_die[i])
	for (i = 0; i < sizeof zombie_fall; i++)
		engfunc(EngFunc_PrecacheSound, zombie_fall[i])
	for (i = 0; i < sizeof zombie_miss_slash; i++)
		engfunc(EngFunc_PrecacheSound, zombie_miss_slash[i])
	for (i = 0; i < sizeof zombie_miss_wall; i++)
		engfunc(EngFunc_PrecacheSound, zombie_miss_wall[i])
	for (i = 0; i < sizeof zombie_hit_normal; i++)
		engfunc(EngFunc_PrecacheSound, zombie_hit_normal[i])
	for (i = 0; i < sizeof zombie_hit_stab; i++)
		engfunc(EngFunc_PrecacheSound, zombie_hit_stab[i])
	for (i = 0; i < sizeof zombie_idle; i++)
		engfunc(EngFunc_PrecacheSound, zombie_idle[i])
	for (i = 0; i < sizeof zombie_idle_last; i++)
		engfunc(EngFunc_PrecacheSound, zombie_idle_last[i])	
	for (i = 0; i < sizeof zombie_madness; i++)
		engfunc(EngFunc_PrecacheSound, zombie_madness[i])
	for (i = 0; i < sizeof sound_nemesis; i++)
		engfunc(EngFunc_PrecacheSound, sound_nemesis[i])
	for (i = 0; i < sizeof sound_survivor; i++)
		engfunc(EngFunc_PrecacheSound, sound_survivor[i])
	for (i = 0; i < sizeof sound_swarm; i++)
		engfunc(EngFunc_PrecacheSound, sound_swarm[i])
	for (i = 0; i < sizeof sound_multi; i++)
		engfunc(EngFunc_PrecacheSound, sound_multi[i])
	for (i = 0; i < sizeof sound_plague; i++)
		engfunc(EngFunc_PrecacheSound, sound_plague[i])
	for (i = 0; i < sizeof grenade_infect; i++)
		engfunc(EngFunc_PrecacheSound, grenade_infect[i])
	for (i = 0; i < sizeof grenade_infect_player; i++)
		engfunc(EngFunc_PrecacheSound, grenade_infect_player[i])
	for (i = 0; i < sizeof grenade_fire; i++)
		engfunc(EngFunc_PrecacheSound, grenade_fire[i])
	for (i = 0; i < sizeof grenade_fire_player; i++)
		engfunc(EngFunc_PrecacheSound, grenade_fire_player[i])
	for (i = 0; i < sizeof grenade_frost; i++)
		engfunc(EngFunc_PrecacheSound, grenade_frost[i])
	for (i = 0; i < sizeof grenade_frost_player; i++)
		engfunc(EngFunc_PrecacheSound, grenade_frost_player[i])
	for (i = 0; i < sizeof grenade_frost_break; i++)
		engfunc(EngFunc_PrecacheSound, grenade_frost_break[i])
	for (i = 0; i < sizeof grenade_flare; i++)
		engfunc(EngFunc_PrecacheSound, grenade_flare[i])
	for (i = 0; i < sizeof sound_antidote; i++)
		engfunc(EngFunc_PrecacheSound, sound_antidote[i])
	for (i = 0; i < sizeof sound_thunder; i++)
		engfunc(EngFunc_PrecacheSound, sound_thunder[i])
	#if defined AMBIENCE_SOUNDS
	for (i = 0; i < sizeof sound_ambience1; i++)
	{
		if (equal(sound_ambience1[i][strlen(sound_ambience1[i])-4], ".mp3"))
		{
			formatex(playermodel, sizeof playermodel - 1, "sound/%s", sound_ambience1[i])
			engfunc(EngFunc_PrecacheGeneric, playermodel)
		}
		else
		{
			engfunc(EngFunc_PrecacheSound, sound_ambience1[i])
		}
	}
	for (i = 0; i < sizeof sound_ambience2; i++)
	{
		if (equal(sound_ambience2[i][strlen(sound_ambience2[i])-4], ".mp3"))
		{
			formatex(playermodel, sizeof playermodel - 1, "sound/%s", sound_ambience2[i])
			engfunc(EngFunc_PrecacheGeneric, playermodel)
		}
		else
		{
			engfunc(EngFunc_PrecacheSound, sound_ambience2[i])
		}
	}
	for (i = 0; i < sizeof sound_ambience3; i++)
	{
		if (equal(sound_ambience3[i][strlen(sound_ambience3[i])-4], ".mp3"))
		{
			formatex(playermodel, sizeof playermodel - 1, "sound/%s", sound_ambience3[i])
			engfunc(EngFunc_PrecacheGeneric, playermodel)
		}
		else
		{
			engfunc(EngFunc_PrecacheSound, sound_ambience3[i])
		}
	}
	for (i = 0; i < sizeof sound_ambience4; i++)
	{
		if (equal(sound_ambience4[i][strlen(sound_ambience4[i])-4], ".mp3"))
		{
			formatex(playermodel, sizeof playermodel - 1, "sound/%s", sound_ambience4[i])
			engfunc(EngFunc_PrecacheGeneric, playermodel)
		}
		else
		{
			engfunc(EngFunc_PrecacheSound, sound_ambience4[i])
		}
	}
	for (i = 0; i < sizeof sound_ambience5; i++)
	{
		if (equal(sound_ambience5[i][strlen(sound_ambience5[i])-4], ".mp3"))
		{
			formatex(playermodel, sizeof playermodel - 1, "sound/%s", sound_ambience5[i])
			engfunc(EngFunc_PrecacheGeneric, playermodel)
		}
		else
		{
			engfunc(EngFunc_PrecacheSound, sound_ambience5[i])
		}
	}
	#endif
	
	// CS sounds (just in case)
	engfunc(EngFunc_PrecacheSound, sound_flashlight)
	engfunc(EngFunc_PrecacheSound, sound_buyammo)
	engfunc(EngFunc_PrecacheSound, sound_armorhit)
	
	// Custom models/sprites for grenades
	g_trailSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_trail)
	g_exploSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_ring)
	g_flameSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_fire)
	g_smokeSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_smoke)
	g_glassSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_glass)
	
	new ent
	
	// Fake Hostage (to force round ending)
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "hostage_entity"))
	if (pev_valid(ent))
	{
		engfunc(EngFunc_SetOrigin, ent, Float:{8192.0 ,8192.0 ,8192.0})
		dllfunc(DLLFunc_Spawn, ent)
	}
	
	#if defined AMBIENCE_FOG
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_fog"))
	if (pev_valid(ent))
	{
		fm_set_kvd(ent, "density", FOG_DENSITY, "env_fog")
		fm_set_kvd(ent, "rendercolor", FOG_COLOR, "env_fog")
	}
	#endif
	
	#if defined AMBIENCE_RAIN
	engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_rain"))
	#endif
	
	#if defined AMBIENCE_SNOW
	engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_snow"))
	#endif
	
	// Prevent some entities from spawning
	g_fwSpawn = register_forward(FM_Spawn, "fw_Spawn")
}

public plugin_init()
{
	// Register plugin call
	register_plugin("Zombie Plague", PLUGIN_VERSION, "MeRcyLeZZ")
	
	// Plugin disabled?
	if (!get_pcvar_num(cvar_toggle)) return;
	
	// No zombie classes?
	if (!g_zclass_i) set_fail_state("No zombie classes loaded!")
	
	// Language files
	register_dictionary("zombie_plague.txt")
	
	// Events
	register_event("HLTV", "event_round_start", "a", "1=0", "2=0")
	register_logevent("logevent_round_start",2, "1=Round_Start")
	register_logevent("logevent_round_end", 2, "1=Round_End")
	#if defined AMBIENCE_SOUNDS
	register_event("30", "event_intermission", "a")
	#endif
	register_event("SpecHealth2", "event_spect_target", "bd")
	register_event("TextMsg", "event_spect_mode", "b")
	
	// Forwards
	RegisterHam(Ham_Spawn, "player", "fw_PlayerSpawn_Post", 1)
	RegisterHam(Ham_Killed, "player", "fw_PlayerKilled")
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage")
	RegisterHam(Ham_TraceAttack, "player", "fw_TraceAttack")
	RegisterHam(Ham_Use, "func_tank", "fw_UseStationary")
	RegisterHam(Ham_Use, "func_tankmortar", "fw_UseStationary")
	RegisterHam(Ham_Use, "func_tankrocket", "fw_UseStationary")
	RegisterHam(Ham_Use, "func_tanklaser", "fw_UseStationary")
	RegisterHam(Ham_Use, "func_pushable", "fw_UsePushable")
	RegisterHam(Ham_Touch, "weaponbox", "fw_TouchWeapon")
	RegisterHam(Ham_Touch, "armoury_entity", "fw_TouchWeapon")
	RegisterHam(Ham_Touch, "weapon_shield", "fw_TouchWeapon")
	register_forward(FM_ClientKill, "fw_ClientKill")
	register_forward(FM_EmitSound, "fw_EmitSound")
	#if !defined HANDLE_MODELS_ON_SEPARATE_ENT
	register_forward(FM_SetClientKeyValue, "fw_SetClientKeyValue")
	register_forward(FM_ClientUserInfoChanged, "fw_ClientUserInfoChanged")
	#endif
	register_forward(FM_GetGameDescription, "fw_GetGameDescription")
	register_forward(FM_CmdStart, "fw_CmdStart")
	register_forward(FM_SetModel, "fw_SetModel")
	RegisterHam(Ham_Think, "grenade", "fw_ThinkGrenade")
	register_forward(FM_PlayerPreThink, "fw_PlayerPreThink")
	register_forward(FM_PlayerPreThink, "fw_PlayerPreThink_Post", 1)
	unregister_forward(FM_Spawn, g_fwSpawn)
	
	// Client commands
	register_clcmd("say zpmenu", "clcmd_saymenu")
	register_clcmd("say /zpmenu", "clcmd_saymenu")
	register_clcmd("say unstuck", "clcmd_sayunstuck")
	register_clcmd("say /unstuck", "clcmd_sayunstuck")
	register_clcmd("nightvision", "clcmd_nvgtoggle")
	register_clcmd("drop", "clcmd_drop")
	register_clcmd("buyammo1", "clcmd_buyammo")
	register_clcmd("buyammo2", "clcmd_buyammo")
	register_clcmd("chooseteam", "clcmd_changeteam")
	register_clcmd("jointeam", "clcmd_changeteam")
	
	// Menus
	register_menu("Buy Menu 1", KEYSMENU, "menu_buy1")
	register_menu("Buy Menu 2", KEYSMENU, "menu_buy2")
	register_menu("Zombie Class Menu", KEYSMENU, "menu_zclass")
	register_menu("Game Menu", KEYSMENU, "menu_game")
	register_menu("Extra Items", KEYSMENU, "menu_extras")
	register_menu("Mod Info", KEYSMENU, "menu_info")
	register_menu("Admin Menu", KEYSMENU, "menu_admin")
	register_menu("Player List Menu", KEYSMENU, "menu_player_list")
	
	// Admin commands
	register_concmd("zp_zombie", "cmd_zombie", ACCESS_FLAG, "<name> - Turn someone into a Zombie")
	register_concmd("zp_human", "cmd_human", ACCESS_FLAG, "<name> - Turn someone back to Human")
	register_concmd("zp_nemesis", "cmd_nemesis", ACCESS_FLAG, "<name> - Turn someone into a Nemesis")
	register_concmd("zp_survivor", "cmd_survivor", ACCESS_FLAG, "<name> - Turn someone into a Survivor")
	register_concmd("zp_respawn", "cmd_respawn", ACCESS_FLAG, "<name> - Respawn someone")
	register_concmd("zp_swarm", "cmd_swarm", ACCESS_FLAG, " - Start Swarm Mode")
	register_concmd("zp_multi", "cmd_multi", ACCESS_FLAG, " - Start Multi Infection")
	register_concmd("zp_plague", "cmd_plague", ACCESS_FLAG, " - Start Plague Mode")
	
	// Message IDs
	g_msgScoreInfo = get_user_msgid("ScoreInfo")
	g_msgTeamInfo = get_user_msgid("TeamInfo")
	g_msgDeathMsg = get_user_msgid("DeathMsg")
	g_msgScoreAttrib = get_user_msgid("ScoreAttrib")
	g_msgSetFOV = get_user_msgid("SetFOV")
	g_msgScreenFade = get_user_msgid("ScreenFade")
	g_msgNVGToggle = get_user_msgid("NVGToggle")
	g_msgFlashlight = get_user_msgid("Flashlight")
	g_msgFlashBat = get_user_msgid("FlashBat")
	g_msgAmmoPickup = get_user_msgid("AmmoPickup")
	g_msgDamage = get_user_msgid("Damage")
	g_msgHideWeapon = get_user_msgid("HideWeapon")
	g_msgCrosshair = get_user_msgid("Crosshair")
	g_msgSayText = get_user_msgid("SayText")
	
	// Message hooks
	register_message(get_user_msgid("CurWeapon"), "message_cur_weapon")
	register_message(get_user_msgid("Money"), "message_money")
	register_message(get_user_msgid("Health"), "message_health")
	register_message(g_msgFlashBat, "message_flashbat")
	register_message(g_msgScreenFade, "message_screenfade")
	#if defined HANDLE_MODELS_ON_SEPARATE_ENT
	register_message(get_user_msgid("ClCorpse"), "message_clcorpse")
	#endif
	register_message(get_user_msgid("WeapPickup"), "message_weappickup")
	register_message(g_msgAmmoPickup, "message_ammopickup")
	register_message(get_user_msgid("Scenario"), "message_scenario")
	register_message(get_user_msgid("HostagePos"), "message_hostagepos")
	register_message(get_user_msgid("TextMsg"), "message_textmsg")
	register_message(get_user_msgid("SendAudio"), "message_sendaudio")
	register_message(get_user_msgid("TeamScore"), "message_teamscore")
	register_message(g_msgTeamInfo, "message_teaminfo")
	
	// CVARS - General Purpose
	cvar_warmup = register_cvar("zp_delay", "10")
	cvar_lighting = register_cvar("zp_lighting", "a")
	cvar_thunder = register_cvar("zp_thunderclap", "90")
	cvar_triggered = register_cvar("zp_triggered_lights", "1")
	cvar_removedoors = register_cvar("zp_remove_doors", "0")
	cvar_blockpushables = register_cvar("zp_blockuse_pushables", "1")
	cvar_blocksuicide = register_cvar("zp_block_suicide", "1")
	cvar_deathmatch = register_cvar("zp_deathmatch", "0")
	cvar_spawndelay = register_cvar("zp_spawn_delay", "5")
	cvar_spawnprotection = register_cvar("zp_spawn_protection", "5")
	cvar_respawnonsuicide = register_cvar("zp_respawn_on_suicide", "0")
	cvar_respawnafterlast = register_cvar("zp_respawn_after_last_human", "1")
	cvar_randspawn = register_cvar("zp_random_spawn", "1")
	cvar_removedropped = register_cvar("zp_remove_dropped", "0")
	cvar_removemoney = register_cvar("zp_remove_money", "1")
	cvar_buycustom = register_cvar("zp_buy_custom", "1")
	cvar_adminmodelshuman = register_cvar("zp_admin_models_human", "1")
	cvar_adminmodelszombie = register_cvar("zp_admin_models_zombie", "1")
	cvar_zclasses = register_cvar("zp_zombie_classes", "1")
	cvar_statssave = register_cvar("zp_stats_save", "1")
	cvar_preventconsecutive = register_cvar("zp_prevent_consecutive_modes", "1")
	
	// CVARS - Extra Items
	cvar_extraitems = register_cvar("zp_extra_items", "1")
	cvar_extra_weapons = register_cvar("zp_extra_weapons", "1")
	cvar_extra_nvision = register_cvar("zp_extra_nvision", "1")
	cvar_extra_antidote = register_cvar("zp_extra_antidote", "1")
	cvar_extra_madness = register_cvar("zp_extra_madness", "1")
	cvar_extra_infbomb = register_cvar("zp_extra_infbomb", "1")
	
	// CVARS - Flashlight and Nightvision
	cvar_nvggive = register_cvar("zp_nvg_give", "1")
	cvar_cnvg = register_cvar("zp_nvg_custom", "1")
	cvar_nvgsize = register_cvar("zp_nvg_size", "80")
	cvar_nvgcolor[0] = register_cvar("zp_nvg_color_R", "0")
	cvar_nvgcolor[1] = register_cvar("zp_nvg_color_G", "150")
	cvar_nvgcolor[2] = register_cvar("zp_nvg_color_B", "0")
	cvar_humnvgcolor[0] = register_cvar("zp_nvg_hum_color_R", "0")
	cvar_humnvgcolor[1] = register_cvar("zp_nvg_hum_color_G", "150")
	cvar_humnvgcolor[2] = register_cvar("zp_nvg_hum_color_B", "0")
	cvar_nemnvgcolor[0] = register_cvar("zp_nvg_nem_color_R", "150")
	cvar_nemnvgcolor[1] = register_cvar("zp_nvg_nem_color_G", "0")
	cvar_nemnvgcolor[2] = register_cvar("zp_nvg_nem_color_B", "0")
	cvar_cflash = register_cvar("zp_flash_custom", "0")
	cvar_flashsize = register_cvar("zp_flash_size", "10")
	cvar_flashdrain = register_cvar("zp_flash_drain", "1")
	cvar_flashcharge = register_cvar("zp_flash_charge", "5")
	cvar_flashdist = register_cvar("zp_flash_distance", "1000")
	cvar_flashcolor[0] = register_cvar("zp_flash_color_R", "100")
	cvar_flashcolor[1] = register_cvar("zp_flash_color_G", "100")
	cvar_flashcolor[2] = register_cvar("zp_flash_color_B", "100")
	
	// CVARS - Knockback
	cvar_knockback = register_cvar("zp_knockback", "0")
	cvar_knockbackdamage = register_cvar("zp_knockback_damage", "1")
	cvar_knockbackpower = register_cvar("zp_knockback_power", "1")
	cvar_knockbackzvel = register_cvar("zp_knockback_zvel", "0")
	cvar_knockbackducking = register_cvar("zp_knockback_ducking", "0")
	cvar_knockbackdist = register_cvar("zp_knockback_distance", "500")
	
	// CVARS - Leap
	cvar_leapzombies = register_cvar("zp_leap_zombies", "0")
	cvar_leapzombiesforce = register_cvar("zp_leap_zombies_force", "500")
	cvar_leapzombiesheight = register_cvar("zp_leap_zombies_height", "300")
	cvar_leapzombiescooldown = register_cvar("zp_leap_zombies_cooldown", "5.0")
	cvar_leapnemesis = register_cvar("zp_leap_nemesis", "1")
	cvar_leapnemesisforce = register_cvar("zp_leap_nemesis_force", "500")
	cvar_leapnemesisheight = register_cvar("zp_leap_nemesis_height", "300")
	cvar_leapnemesiscooldown = register_cvar("zp_leap_nemesis_cooldown", "5.0")
	cvar_leapsurvivor = register_cvar("zp_leap_survivor", "0")
	cvar_leapsurvivorforce = register_cvar("zp_leap_survivor_force", "500")
	cvar_leapsurvivorheight = register_cvar("zp_leap_survivor_height", "300")
	cvar_leapsurvivorcooldown = register_cvar("zp_leap_survivor_cooldown", "5.0")
	
	// CVARS - Humans
	cvar_humanhp = register_cvar("zp_human_health", "100")
	cvar_humanlasthp = register_cvar("zp_human_last_extrahp", "0")
	cvar_humanspd = register_cvar("zp_human_speed", "240")
	cvar_humangravity = register_cvar("zp_human_gravity", "1.0")
	cvar_humanarmor = register_cvar("zp_human_armor_protect", "1")
	cvar_infammo = register_cvar("zp_human_unlimited_ammo", "0")
	cvar_ammodamage = register_cvar("zp_human_damage_reward", "500")
	cvar_fragskill = register_cvar("zp_human_frags_for_kill", "1")
	
	// CVARS - Custom Grenades
	cvar_firegrenades = register_cvar("zp_fire_grenades", "1")
	cvar_fireduration = register_cvar("zp_fire_duration", "10")
	cvar_firedamage = register_cvar("zp_fire_damage", "5")
	cvar_fireslowdown = register_cvar("zp_fire_slowdown", "0.5")
	cvar_frostgrenades = register_cvar("zp_frost_grenades", "1")
	cvar_freezeduration = register_cvar("zp_frost_duration", "3")
	cvar_flaregrenades = register_cvar("zp_flare_grenades","1")
	cvar_flareduration = register_cvar("zp_flare_duration", "60")
	cvar_flaresize = register_cvar("zp_flare_size", "25")
	cvar_flarecolor = register_cvar("zp_flare_color", "0")
	
	// CVARS - Zombies
	cvar_zombiefirsthp = register_cvar("zp_zombie_first_hp", "2.0")
	cvar_zombiearmor = register_cvar("zp_zombie_armor", "0.75")
	cvar_hitzones = register_cvar("zp_zombie_hitzones", "0")
	cvar_zombiebonushp = register_cvar("zp_zombie_infect_health", "100")
	cvar_zombiefov = register_cvar("zp_zombie_fov", "110")
	cvar_zombiesilent = register_cvar("zp_zombie_silent", "1")
	cvar_zombiepainfree = register_cvar("zp_zombie_painfree", "2")
	cvar_zombiebleeding = register_cvar("zp_zombie_bleeding", "1")
	cvar_ammoinfect = register_cvar("zp_zombie_infect_reward", "1")
	cvar_fragsinfect = register_cvar("zp_zombie_frags_for_infect", "1")
	
	// CVARS - Nemesis
	cvar_nem = register_cvar("zp_nem_enabled", "1")
	cvar_nemchance = register_cvar("zp_nem_chance", "20")
	cvar_nemminplayers = register_cvar("zp_nem_min_players", "0")
	cvar_nemhp = register_cvar("zp_nem_health", "0")
	cvar_nemspd = register_cvar("zp_nem_speed", "250")
	cvar_nemgravity = register_cvar("zp_nem_gravity", "0.5")
	cvar_nemdamage = register_cvar("zp_nem_damage", "250")
	cvar_nemglow = register_cvar("zp_nem_glow", "1")
	cvar_nemaura = register_cvar("zp_nem_aura", "1")	
	cvar_nempainfree = register_cvar("zp_nem_painfree", "0")
	cvar_nemignorefrags = register_cvar("zp_nem_ignore_frags", "1")
	cvar_nemignoreammo = register_cvar("zp_nem_ignore_rewards", "1")
	
	// CVARS - Survivor
	cvar_surv = register_cvar("zp_surv_enabled", "1")
	cvar_survchance = register_cvar("zp_surv_chance", "20")
	cvar_survminplayers = register_cvar("zp_surv_min_players", "0")
	cvar_survhp = register_cvar("zp_surv_health", "0")
	cvar_survspd = register_cvar("zp_surv_speed", "230")
	cvar_survgravity = register_cvar("zp_surv_gravity", "1.25")
	cvar_survglow = register_cvar("zp_surv_glow", "1")
	cvar_survaura = register_cvar("zp_surv_aura", "1")
	cvar_survpainfree = register_cvar("zp_surv_painfree", "1")
	cvar_survignorefrags = register_cvar("zp_surv_ignore_frags", "1")
	cvar_survignoreammo = register_cvar("zp_surv_ignore_rewards", "1")
	
	// CVARS - Swarm Mode
	cvar_swarm = register_cvar("zp_swarm_enabled", "1")
	cvar_swarmchance = register_cvar("zp_swarm_chance", "20")
	cvar_swarmminplayers = register_cvar("zp_swarm_min_players", "0")
	
	// CVARS - Multi Infection
	cvar_multi = register_cvar("zp_multi_enabled", "1")
	cvar_multichance = register_cvar("zp_multi_chance", "20")
	cvar_multiminplayers = register_cvar("zp_multi_min_players", "0")
	cvar_multiratio = register_cvar("zp_multi_ratio", "0.15")
	
	// CVARS - Plague Mode
	cvar_plague = register_cvar("zp_plague_enabled", "1")
	cvar_plaguechance = register_cvar("zp_plague_chance", "30")
	cvar_plagueminplayers = register_cvar("zp_plague_min_players", "0")
	cvar_plagueratio = register_cvar("zp_plague_ratio", "0.5")
	
	// CVARS - Others
	cvar_logcommands = register_cvar("zp_logcommands", "1")
	cvar_showactivity = get_cvar_pointer("amx_show_activity")
	cvar_botquota = get_cvar_pointer("bot_quota")
	register_cvar("zp_version", PLUGIN_VERSION, FCVAR_SERVER|FCVAR_SPONLY)
	set_cvar_string("zp_version", PLUGIN_VERSION)
	
	// Custom Forwards
	g_fwRoundStart = CreateMultiForward("zp_round_started", ET_IGNORE, FP_CELL, FP_CELL)
	g_fwRoundEnd = CreateMultiForward("zp_round_ended", ET_IGNORE, FP_CELL)
	g_fwUserInfected_pre = CreateMultiForward("zp_user_infected_pre", ET_IGNORE, FP_CELL, FP_CELL)
	g_fwUserInfected_post = CreateMultiForward("zp_user_infected_post", ET_IGNORE, FP_CELL, FP_CELL)
	g_fwUserHumanized_pre = CreateMultiForward("zp_user_humanized_pre", ET_IGNORE, FP_CELL)
	g_fwUserHumanized_post = CreateMultiForward("zp_user_humanized_post", ET_IGNORE, FP_CELL)
	g_fwExtraItemSelected = CreateMultiForward("zp_extra_item_selected", ET_IGNORE, FP_CELL, FP_CELL)
	
	// Collect random spawn points
	load_spawns()
	
	// Set a random skybox
	set_cvar_string("sv_skyname", skynames[random_num(0, sizeof skynames - 1)])
	
	// Disable sky lighting so it doesn't mess up our custom lighting
	set_cvar_num("sv_skycolor_r", 0)
	set_cvar_num("sv_skycolor_g", 0)
	set_cvar_num("sv_skycolor_b", 0)
	
	// Create the HUD Sync Objects
	g_MsgSync = CreateHudSyncObj()
	g_MsgSync2 = CreateHudSyncObj()
	
	// Format mod name
	formatex(g_modname, sizeof g_modname - 1, "Zombie Plague %s", PLUGIN_VERSION)
	
	// Get Max Players
	g_maxplayers = get_maxplayers()
	
	// Reserved saving slots starts on maxplayers+1
	db_slot_i = g_maxplayers+1
	
	// Check if it's a CZ server
	new mymod[6]
	get_modname(mymod, sizeof mymod - 1)
	if (equal(mymod, "czero")) g_czero = 1
	
	// Lighting task
	set_task(5.0, "lighting_effects", TASK_LIGHTING, _, _, "b")
	
	// Call Round Start
	set_task(1.0, "event_round_start")
}

public plugin_cfg()
{
	// Get configs dir
	new cfgdir[32]
	get_configsdir(cfgdir, sizeof cfgdir - 1);
	
	// Execute config file (zombieplague.cfg)
	server_cmd("exec %s/zombieplague.cfg", cfgdir)
}

/*================================================================================
 [Main Events]
=================================================================================*/

// Event Round Start
public event_round_start()
{
	// Remove all tasks bound to custom nades (since they're removed on new round)
	remove_task(TASK_NADES)
	
	// Remove doors/lights
	set_task(0.2, "remove_stuff")
	
	#if defined AMBIENCE_SOUNDS
	// Stop ambience sounds and start 'em again
	remove_task(TASK_AMBIENCESOUNDSSTOP)
	set_task(1.0, "ambience_sound_stop", TASK_AMBIENCESOUNDSSTOP)
	remove_task(TASK_AMBIENCESOUNDS)
	set_task(1.5, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
	#endif
	
	// New round starting
	g_newround = true
	g_endround = false
	g_survround = false
	g_nemround = false
	g_swarmround = false
	g_plagueround = false
	
	// Freezetime begins
	g_freezetime = true
	
	g_teams_i = 0.0 // reset team change counter
	g_models_i = 0.0 // reset model change counter
	
	// Show welcome message and T-Virus notice
	remove_task(TASK_WELCOMEMSG)
	set_task(2.0, "welcome_msg", TASK_WELCOMEMSG)
	
	// Set a new "Make Zombie Task"
	remove_task(TASK_MAKEZOMBIE)
	set_task(2.0+random_float(get_pcvar_float(cvar_warmup), get_pcvar_float(cvar_warmup)+3.0), "make_zombie_task", TASK_MAKEZOMBIE)
}

// Log Event Round Start
public logevent_round_start()
{
	// Freezetime ends
	g_freezetime = false
}

// Log Event Round End
public logevent_round_end()
{
	// Prevent this from getting called twice when restarting (bugfix)
	static Float:lastendtime
	if (get_gametime() - lastendtime < 0.5) return;
	lastendtime = get_gametime()
	
	// Temporarily save player stats?
	if (get_pcvar_num(cvar_statssave))
	{
		static id, team
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not connected
			if (!is_user_connected(id))
				continue;
			
			team = fm_get_user_team(id)
			
			// Not playing
			if (team == CS_TEAM_SPECTATOR || team == CS_TEAM_UNASSIGNED)
				continue;
			
			save_stats(id)
		}
	}
	
	// Round ended
	g_endround = true
	
	g_teams_i = 0.0 // reset teams change counter
	g_models_i = 0.0 // reset model change counter
	
	// Stop old tasks (if any)
	remove_task(TASK_WELCOMEMSG)
	remove_task(TASK_MAKEZOMBIE)
	
	// Balance the teams
	set_task(0.1, "balance_teams")
	
	// Show HUD notice, play win sound, update team scores...
	if (!fnGetZombies())
	{
		// Human team wins
		set_hudmessage(0, 0, 200, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 2.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "WIN_HUMAN")
		
		// Play win sound and increase score
		PlaySound(sound_win_humans[random_num(0, sizeof sound_win_humans -1)])
		g_scorehumans++
		
		// Round end forward
		ExecuteForward(g_fwRoundEnd, g_fwDummyResult, 2);
	}
	else if (!fnGetHumans())
	{
		// Zombie team wins
		set_hudmessage(200, 0, 0, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 2.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "WIN_ZOMBIE")
		
		// Play win sound and increase score
		PlaySound(sound_win_zombies[random_num(0, sizeof sound_win_zombies -1)])
		g_scorezombies++
		
		// Round end forward
		ExecuteForward(g_fwRoundEnd, g_fwDummyResult, 1);
	}
	else
	{
		// No one wins
		set_hudmessage(0, 200, 0, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 2.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "WIN_NO_ONE")
		PlaySound(sound_win_no_one[random_num(0, sizeof sound_win_no_one -1)])
		
		// Round end forward
		ExecuteForward(g_fwRoundEnd, g_fwDummyResult, 0);
	}
}

#if defined AMBIENCE_SOUNDS
// Event Map Ended
public event_intermission()
{
	// Remove ambience sounds task
	remove_task(TASK_AMBIENCESOUNDS)
	remove_task(TASK_AMBIENCESOUNDSSTOP)
}
#endif

// Event Spectator Mode
public event_spect_mode(id)
{
	// Custom night vision isn't affected by this
	if (get_pcvar_num(cvar_cnvg))
		return;
	
	// Get text message string
	static textmsg[12]
	read_data(2, textmsg, sizeof textmsg - 1)
	
	// Not a spectator mode event
	if (!equal(textmsg, "#Spec_Mode", 10))
		return;
	
	// If last mode was first person and nvg was on
	if (g_spec_first_person[id] && g_nvisionenabled[id])
		set_user_gnvision(id, 1) // restore it
	
	// First Person Mode?
	g_spec_first_person[id] = (textmsg[10] == '4') ? true : false
}

// Event Spectator Target
public event_spect_target(id)
{
	// Custom night vision isn't affected by this
	if (!id || get_pcvar_num(cvar_cnvg))
		return;
	
	// If previous target died and nvg was on
	if (g_nvisionenabled[id] && !is_user_alive(g_spec_target[id]))
		set_user_gnvision(id, 1) // restore it
	
	// Update last spectator target
	g_spec_target[id] = read_data(2)
}

/*================================================================================
 [Main Forwards]
=================================================================================*/

// Client joins the game
public client_putinserver(id)
{
	// Plugin disabled?
	if (!get_pcvar_num(cvar_toggle)) return;
	
	// Initialize player vars
	reset_vars(id, 1)
	
	// Load player stats?
	if (get_pcvar_num(cvar_statssave)) load_stats(id)
	
	// Set the custom HUD display task
	set_task(1.0, "ShowHUD", id+TASK_SHOWHUD, _, _, "b")
	
	// Enable high quality models for clients to see zombies properly
	set_task(5.0, "disable_minmodels", id)
	
	// CZ bots seem to use a different "classtype" for player entities
	// (or something like that) which needs to be hooked separately
	if (!g_hamczbots && cvar_botquota && is_user_bot(id))
	{
		// Set a task to let the private data initialize
		set_task(0.1, "register_ham_czbots", id)
	}
}

// Disable minmodels task
public disable_minmodels(id)
{
	if (!is_user_connected(id)) return;
	client_cmd(id, "cl_minmodels 0")
}

// Client disconnect
public client_disconnect(id)
{
	// Plugin disabled?
	if (!get_pcvar_num(cvar_toggle)) return;
	
	// Check that we still have both humans and zombies to keep the round going
	if (is_user_alive(id)) check_round(id)
	
	// Temporarily save player stats?
	if (get_pcvar_num(cvar_statssave)) save_stats(id)
	
	// Remove previous tasks
	remove_task(id+TASK_TEAM)
	remove_task(id+TASK_MODEL)
	remove_task(id+TASK_FLASH)
	remove_task(id+TASK_CHARGE)
	remove_task(id+TASK_SPAWN)
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_NVISION)
	remove_task(id+TASK_SHOWHUD)
	
	#if defined HANDLE_MODELS_ON_SEPARATE_ENT
	// Remove custom model entities
	fm_remove_model_ents(id)
	#endif
	
	// Last Zombie Check
	set_task(0.1, "fnCheckLastZombie")
}

// Entity Spawn Forward
public fw_Spawn(entity)
{
	// Invalid entity
	if (!pev_valid(entity)) return FMRES_IGNORED;
	
	// Get classname
	new classname[32]
	pev(entity, pev_classname, classname, sizeof classname - 1)
	
	// Check whether it needs to be removed
	for (new i = 0; i < sizeof g_objective_ents; i++)
	{
		if (equal(classname, g_objective_ents[i]))
		{
			engfunc(EngFunc_RemoveEntity, entity)
			return FMRES_SUPERCEDE;
		}
	}
	
	return FMRES_IGNORED;
}

// Ham Player Spawn Post Forward
public fw_PlayerSpawn_Post(id)
{
	// Not alive or not on team
	if (!is_user_alive(id) || !fm_get_user_team(id))
		return;
	
	// Remove previous tasks
	remove_task(id+TASK_SPAWN)
	remove_task(id+TASK_TEAM)
	remove_task(id+TASK_MODEL)
	remove_task(id+TASK_BLOOD)
	
	// Spawn randomly?
	if (get_pcvar_num(cvar_randspawn)) do_random_spawn(id)
	
	// Spawn as zombie?
	if (g_respawn_as_zombie[id] && !g_newround)
	{
		reset_vars(id, 0) // reset player vars
		zombieme(id, 0, 0, 0) // make him zombie right away
		return;
	}
	
	// Reset player vars
	reset_vars(id, 0)
	
	// Set health and gravity
	fm_set_user_health(id, get_pcvar_num(cvar_humanhp))
	set_pev(id, pev_gravity, get_pcvar_float(cvar_humangravity))
	
	#if defined HANDLE_MODELS_ON_SEPARATE_ENT
	
	// Set the right model
	if (get_pcvar_num(cvar_adminmodelshuman) && get_user_flags(id) & ACCESS_FLAG3)
		copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_admin[random_num(0, sizeof model_admin -1)])
	else
		copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_human[random_num(0, sizeof model_human -1)])
	
	// Set model on player model entity
	fm_set_playermodel_ent(id)
	
	// Remove glow on player model entity
	fm_set_rendering(g_ent_playermodel[id])
	
	#else
	
	// Set the right model, after checking that we don't already have it
	static currentmodel[32], already_has_model, i, iRand
	already_has_model = false
	
	// Get current model and compare it with current one
	fm_get_user_model(id, currentmodel, sizeof currentmodel - 1)
	
	if (get_pcvar_num(cvar_adminmodelshuman) && get_user_flags(id) & ACCESS_FLAG3)
	{
		for (i = 0; i < sizeof model_admin; i++)
			if (equal(model_admin[i], currentmodel)) already_has_model = true
		
		if (!already_has_model)
		{
			iRand = random_num(0, sizeof model_admin -1)
			copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_admin[iRand])
			#if defined SET_MODELINDEX_OFFSET
			fm_set_user_model_index(id, g_modelindex_admin[iRand])
			#endif
		}
	}
	else
	{
		for (i = 0; i < sizeof model_human; i++)
			if (equal(model_human[i], currentmodel)) already_has_model = true;
		
		if (!already_has_model)
		{
			iRand = random_num(0, sizeof model_human -1)
			copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_human[iRand])
			#if defined SET_MODELINDEX_OFFSET
			fm_set_user_model_index(id, g_modelindex_human[iRand])
			#endif
		}
	}
	
	// Need to change the model?
	if (!already_has_model)
	{
		// Round starting?
		if (g_newround)
		{
			// Set model with a delay
			set_task(0.1+(MODELCHANGE_DELAY*5)+g_models_i, "fm_set_user_model", id+TASK_MODEL)
			g_models_i += MODELCHANGE_DELAY
		}
		else
		{
			// Set model instantly
			fm_set_user_model(id+TASK_MODEL)
		}
	}
	
	// Remove glow
	fm_set_rendering(id)
	
	#endif
	
	// Bots stuff
	if (is_user_bot(id))
	{
		// Turn off NVG for bots
		fm_set_bot_nvg(id, 0)
		
		// Automatically buy extra items/weapons after first zombie is chosen
		if (get_pcvar_num(cvar_extraitems))
		{
			if (g_newround) set_task(10.0+get_pcvar_float(cvar_warmup), "bot_buy_extras", id+TASK_SPAWN)
			else set_task(10.0, "bot_buy_extras", id+TASK_SPAWN)
		}
	}
	
	// Hide money?
	if (get_pcvar_num(cvar_removemoney))
		set_task(0.2, "task_hide_money", id+TASK_SPAWN)
	
	// Show custom buy menu?
	if (get_pcvar_num(cvar_buycustom))
		set_task(0.4, "show_menu_buy1", id+TASK_SPAWN)
	
	// Respawn player if he dies by worldspawn kill or something
	set_task(5.0, "respawn_player", id+TASK_SPAWN)
	
	// Get spawn protection time
	static Float:sptime
	sptime = get_pcvar_float(cvar_spawnprotection)
	
	// Enable spawn protection for humans spawning mid-round
	if (!g_newround && sptime > 0.0)
	{
		// Dont take any damage
		g_nodamage[id] = true
		
		// Make temporarily invisible
		set_pev(id, pev_effects, pev(id, pev_effects) | EF_NODRAW)
		
		// Set task to remove it
		set_task(sptime, "remove_spawn_protection", id+TASK_SPAWN)
	}
	
	// Last Zombie Check
	set_task(0.1, "fnCheckLastZombie")
}

// Ham Player Killed Forward
public fw_PlayerKilled(victim, attacker, shouldgib)
{
	// Enable dead players nightvision
	set_task(0.2, "spec_nvision", victim)
	
	// Last Zombie Check
	set_task(0.1, "fnCheckLastZombie")
	
	// Stop bleeding/burning when killed
	if (g_zombie[victim])
		remove_task(victim+TASK_BLOOD)
	
	// Nemesis explodes!
	if (g_nemesis[victim])
		SetHamParamInteger(3, 2)
	
	// Get deathmatch mode status and whether the player killed himself
	static deathmatch, selfkill
	deathmatch = get_pcvar_num(cvar_deathmatch)
	selfkill = (victim == attacker || !is_user_connected(attacker)) ? true : false
	
	// Respawn if deathmatch is enabled
	if (deathmatch)
	{
		// Respawn on suicide?
		if (selfkill && !get_pcvar_num(cvar_respawnonsuicide))
			return;
		
		// Respawn if only the last human is left?
		if (!get_pcvar_num(cvar_respawnafterlast) && fnGetHumans() == 1)
			return;
		
		// Respawn as zombie?
		if (deathmatch == 2 || (deathmatch == 3 && random_num(0, 1)) || (deathmatch == 4 && fnGetZombies() < fnGetAlive()/2))
			g_respawn_as_zombie[victim] = true
		
		// Set the respawn task
		set_task(get_pcvar_float(cvar_spawndelay), "respawn_player", victim+TASK_SPAWN)
	}
	
	// Killed by a non-player entity or self killed
	if (selfkill) return;
	
	// Ignore Nemesis/Survivor Frags?
	if ((g_nemesis[attacker] && get_pcvar_num(cvar_nemignorefrags)) || (g_survivor[attacker] && get_pcvar_num(cvar_survignorefrags)))
		RemoveFrags(attacker, victim)
	
	// Zombie/nemesis killed human, reward ammo packs
	if (g_zombie[attacker] && (!g_nemesis[attacker] || !get_pcvar_num(cvar_nemignoreammo)))
		g_ammopacks[attacker] += get_pcvar_num(cvar_ammoinfect)
	
	// Get frag rewards for humans and zombies
	static fragskill, fragsinfect
	fragskill = get_pcvar_num(cvar_fragskill)
	fragsinfect = get_pcvar_num(cvar_fragsinfect)
	
	// Human killed zombie, add up the extra frags for kill
	if (!g_zombie[attacker] && fragskill > 1)
		UpdateFrags(attacker, victim, fragskill-1, 0, 0)
	
	// Zombie killed human, add up the extra frags for kill
	if (g_zombie[attacker] && fragsinfect > 1)
		UpdateFrags(attacker, victim, fragsinfect-1, 0, 0)
}

// Ham Take Damage Forward (inflictor = weapon)
public fw_TakeDamage(victim, inflictor, attacker, Float:damage, damage_type)
{
	// Non-player damage or self damage
	if (victim == attacker || !is_user_connected(attacker))
		return HAM_IGNORED;
	
	// New round starting or round ended
	if (g_newround || g_endround)
		return HAM_SUPERCEDE;
	
	// Victim shouldn't take damage or victim is frozen
	if (g_nodamage[victim] || g_frozen[victim])
		return HAM_SUPERCEDE;
	
	// Prevent friendly fire
	if (g_zombie[attacker] == g_zombie[victim])
		return HAM_SUPERCEDE;
	
	// Attacker is human...
	if (!g_zombie[attacker])
	{
		// Armor multiplier for the final damage on normal zombies
		if (!g_nemesis[victim])
		{
			damage *= get_pcvar_float(cvar_zombiearmor)
			SetHamParamFloat(4, damage)
		}
		
		// Reward ammo packs
		if (!g_survivor[attacker] || !get_pcvar_num(cvar_survignoreammo))
		{
			// Store damage dealt
			g_damagedealt[attacker] += floatround(damage)
			
			// Get damage required to get an ammo pack
			static ammodamage
			ammodamage = get_pcvar_num(cvar_ammodamage)
			
			// Reward ammo packs for every [ammo damage] dealt
			while (g_damagedealt[attacker] >= ammodamage)
			{
				g_ammopacks[attacker]++
				g_damagedealt[attacker] -= ammodamage
			}
		}
		
		return HAM_IGNORED;
	}
	
	// Attacker is zombie...
	
	// Prevent infection by HE grenade (bugfix)
	if (damage_type & DMG_HEGRENADE)
		return HAM_SUPERCEDE;
	
	// Nemesis?
	if (g_nemesis[attacker])
	{
		// Set nemesis damage
		SetHamParamFloat(4, get_pcvar_float(cvar_nemdamage))
		return HAM_IGNORED;
	}
	
	// Last human or swarm round or plague round
	if (g_swarmround || g_plagueround || fnGetHumans() == 1)
		return HAM_IGNORED; // human is killed
	
	// Does human armor need to be reduced before infecting?
	if (get_pcvar_num(cvar_humanarmor))
	{
		// Get victim armor
		static Float:armor
		pev(victim, pev_armorvalue, armor)
		
		// Block the attack if he has some
		if (armor > 0.0)
		{
			engfunc(EngFunc_EmitSound, victim, CHAN_BODY, sound_armorhit, 1.0, ATTN_NORM, 0, PITCH_NORM)
			set_pev(victim, pev_armorvalue, floatmax(0.0, armor - damage))
			return HAM_SUPERCEDE;
		}
	}
	
	// Infection allowed
	SendDeathMsg(attacker, victim) // send death notice
	FixDeadAttrib(victim) // fix the "dead" attrib on scoreboard
	UpdateFrags(attacker, victim, get_pcvar_num(cvar_fragsinfect), 1, 1) // add corresponding frags and deaths
	
	zombieme(victim, attacker, 0, 0) // turn into zombie
	g_ammopacks[attacker] += get_pcvar_num(cvar_ammoinfect) // ammo packs given to zombie for infection
	fm_set_user_health(attacker, pev(attacker, pev_health)+get_pcvar_num(cvar_zombiebonushp)) // attacker gets bonus HP for the infection
	
	return HAM_SUPERCEDE;
}

// Ham Trace Attack Forward
public fw_TraceAttack(victim, attacker, Float:damage, Float:direction[3], tracehandle, damage_type)
{
	// Non-player damage or self damage
	if (victim == attacker || !is_user_connected(attacker))
		return HAM_IGNORED;
	
	// New round starting or round ended
	if (g_newround || g_endround)
		return HAM_SUPERCEDE;
	
	// Victim shouldn't take damage or victim is frozen
	if (g_nodamage[victim] || g_frozen[victim])
		return HAM_SUPERCEDE;
	
	// Prevent friendly fire
	if (g_zombie[attacker] == g_zombie[victim])
		return HAM_SUPERCEDE;
	
	// Victim isn't a normal zombie
	if (!g_zombie[victim] || g_nemesis[victim])
		return HAM_IGNORED;
	
	// Get custom hitzones
	static hitzones
	hitzones = get_pcvar_num(cvar_hitzones)
	
	// Check if we hit an allowed one
	if (hitzones && !(hitzones & (1<<get_tr2(tracehandle, TR_iHitgroup))))
		return HAM_SUPERCEDE;
	
	// Knockback disabled or not bullet damage
	if (!(damage_type & DMG_BULLET) || !get_pcvar_num(cvar_knockback))
		return HAM_IGNORED;
	
	// Get victim flags and knockback while ducking setting
	static victimflags, Float:knockduck
	victimflags = pev(victim, pev_flags)
	knockduck = get_pcvar_float(cvar_knockbackducking)
	
	// Zombie is ducking on ground
	if (knockduck == 0.0 && (victimflags & FL_DUCKING) && (victimflags & FL_ONGROUND))
		return HAM_IGNORED;
	
	// Get distance between players
	static Float:origin1F[3], Float:origin2F[3]
	pev(victim, pev_origin, origin1F)
	pev(attacker, pev_origin, origin2F)
	
	// Max distance exceeded
	if (get_distance_f(origin1F, origin2F) > get_pcvar_float(cvar_knockbackdist))
		return HAM_IGNORED;
	
	// Get victim's velocity
	static Float:velocity[3]
	pev(victim, pev_velocity, velocity)
	
	// Use damage on knockback calculation
	if (get_pcvar_num(cvar_knockbackdamage))
		xs_vec_mul_scalar(direction, damage, direction)
	
	// Use weapon power on knockback calculation
	if (kb_weapon_power[g_currentweapon[attacker]] > 0.0 && get_pcvar_num(cvar_knockbackpower))
		xs_vec_mul_scalar(direction, kb_weapon_power[g_currentweapon[attacker]], direction)
	
	// Apply ducking knockback multiplier
	if ((victimflags & FL_DUCKING) && (victimflags & FL_ONGROUND))
		xs_vec_mul_scalar(direction, knockduck, direction)
	
	// Apply zombie class knockback multiplier
	xs_vec_mul_scalar(direction, g_zclass_kb[g_zombieclass[victim]], direction)
	
	// Add up the new vector
	xs_vec_add(velocity, direction, direction)
	
	// Should knockback also affect vertical velocity?
	if (!get_pcvar_num(cvar_knockbackzvel))
		direction[2] = velocity[2]
	
	// Set the knockback'd victim's velocity
	set_pev(victim, pev_velocity, direction)
	
	return HAM_IGNORED;
}

// Ham Use Stationary Gun Forward
public fw_UseStationary(entity, caller, activator, use_type)
{
	// Not a player
	if (!is_user_connected(caller))
		return HAM_IGNORED;
	
	// Prevent zombies from using stationary guns
	if (use_type == USE_USING && g_zombie[caller])
		return HAM_SUPERCEDE;
	
	// Someone stopped using a stationary gun
	if (use_type == USE_STOPPED)
		set_task(0.1, "replace_models", caller) // replace weapon models (bugfix)
	
	return HAM_IGNORED;
}

// Ham Use Pushable Forward
public fw_UsePushable()
{
	// Prevent speed bug with pushables?
	if (get_pcvar_num(cvar_blockpushables))
		return HAM_SUPERCEDE;
	
	return HAM_IGNORED;
}

// Ham Weapon Touch Forward
public fw_TouchWeapon(weapon, id)
{
	// Not a player
	if (!is_user_connected(id))
		return HAM_IGNORED;
	
	// Dont pickup weapons if zombie or survivor
	if (g_zombie[id] || (g_survivor[id] && !is_user_bot(id)))
		return HAM_SUPERCEDE;
	
	return HAM_IGNORED;
}

// Client Kill Forward
public fw_ClientKill()
{
	// Prevent players from killing themselves?
	if (get_pcvar_num(cvar_blocksuicide))
		return FMRES_SUPERCEDE;
	
	return FMRES_IGNORED;
}

// Emit Sound Forward
public fw_EmitSound(id, channel, const sample[], Float:volume, Float:attn, flags, pitch)
{
	// Replace these sounds for zombies only
	if (!is_user_connected(id) || !g_zombie[id])
		return FMRES_IGNORED;
	
	// Zombie being hit
	if (equal(sample[7], "bhit", 4))
	{
		if (g_nemesis[id])
			engfunc(EngFunc_EmitSound, id, channel, nemesis_pain[random_num(0, sizeof nemesis_pain - 1)], volume, attn, flags, pitch)
		else
			engfunc(EngFunc_EmitSound, id, channel, zombie_pain[random_num(0, sizeof zombie_pain - 1)], volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}
	
	// Zombie attacks with knife
	if (equal(sample[8], "kni", 3))
	{
		if (equal(sample[14], "sla", 3)) // slash
		{
			engfunc(EngFunc_EmitSound, id, channel, zombie_miss_slash[random_num(0, sizeof zombie_miss_slash - 1)], volume, attn, flags, pitch)
			return FMRES_SUPERCEDE;
		}
		if (equal(sample[14], "hit", 3))
		{
			if (sample[17] == 'w') // wall
			{
				engfunc(EngFunc_EmitSound, id, channel, zombie_miss_wall[random_num(0, sizeof zombie_miss_wall - 1)], volume, attn, flags, pitch)
				return FMRES_SUPERCEDE;
			}
			else // hit
			{
				engfunc(EngFunc_EmitSound, id, channel, zombie_hit_normal[random_num(0, sizeof zombie_hit_normal - 1)], volume, attn, flags, pitch)
				return FMRES_SUPERCEDE;
			}
		}
		if (equal(sample[14], "sta", 3)) // stab
		{
			engfunc(EngFunc_EmitSound, id, channel, zombie_hit_stab[random_num(0, sizeof zombie_hit_stab - 1)], volume, attn, flags, pitch)
			return FMRES_SUPERCEDE;
		}
	}
	
	// Zombie dies
	if (equal(sample[7], "die", 3) || equal(sample[7], "dea", 3))
	{
		engfunc(EngFunc_EmitSound, id, channel, zombie_die[random_num(0, sizeof zombie_die - 1)], volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}
	
	// Zombie falls off
	if (equal(sample[10], "fall", 4))
	{
		engfunc(EngFunc_EmitSound, id, channel, zombie_fall[random_num(0, sizeof zombie_fall - 1)], volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}
	
	return FMRES_IGNORED;
}

#if !defined HANDLE_MODELS_ON_SEPARATE_ENT
// Forward Set ClientKey Value -prevent CS from changing player models-
public fw_SetClientKeyValue(id, const infobuffer[], const key[])
{
	// Block CS model changes
	if (equal(key, "model"))
		return FMRES_SUPERCEDE;
	
	return FMRES_IGNORED;
}

// Forward Client User Info Changed -prevent players from changing models-
public fw_ClientUserInfoChanged(id)
{
	// Get current model
	static currentmodel[32]
	fm_get_user_model(id, currentmodel, sizeof currentmodel - 1)
	
	// If they're different, set model again
	if (!equal(currentmodel, g_playermodel[id]) && !task_exists(id+TASK_MODEL))
		fm_set_user_model(id+TASK_MODEL) 
}
#endif

// Forward Get Game Description
public fw_GetGameDescription()
{
	// Return the mod name so it can be easily identified
	forward_return(FMV_STRING, g_modname)
	
	return FMRES_SUPERCEDE;
}

// Forward CmdStart
public fw_CmdStart(id, handle)
{
	// Check if it's a flashlight impulse
	if (get_uc(handle, UC_Impulse) != IMPULSE_FLASHLIGHT)
		return FMRES_IGNORED;
	
	// Not alive
	if (!is_user_alive(id))
		return FMRES_IGNORED;
	
	// Block it for zombies, survivor (and override it for humans when custom flashlight is on)
	if (g_zombie[id] || g_survivor[id] || (!g_zombie[id] && get_pcvar_num(cvar_cflash)))
	{
		// Human's custom flashlight should be turned on instead
		if (!g_zombie[id] && !g_survivor[id] && get_gametime() - g_lastflashtime[id] > 1.1)
		{
			// Prevent turning the flashlight on/off too quickly (bugfix)
			g_lastflashtime[id] = get_gametime()
			
			// Turn custom flashlight on/off
			g_flashlight[id] = !(g_flashlight[id])
			
			// Set the flashlight charge task
			remove_task(id+TASK_CHARGE)
			set_task(1.0, "flashlight_charge", id+TASK_CHARGE, _, _, "b")
			
			// Update flashlight status on the HUD
			message_begin(MSG_ONE, g_msgFlashlight, _, id)
			write_byte(g_flashlight[id]) // toggle
			write_byte(g_flashbattery[id]) // battery
			message_end()
			
			// Turn off original flashlight if active
			set_pev(id, pev_effects, pev(id, pev_effects) & ~EF_DIMLIGHT)
			
			// Play flashlight toggle sound
			engfunc(EngFunc_EmitSound, id, CHAN_ITEM, sound_flashlight, 1.0, ATTN_NORM, 0, PITCH_NORM)
			
			// Finally call our custom flashlight task
			remove_task(id+TASK_FLASH)
			set_task(0.1, "set_user_flashlight", id+TASK_FLASH, _, _, "b")
		}
		
		// Block the impulse
		set_uc(handle, UC_Impulse, 0)
		return FMRES_SUPERCEDE;
	}
	
	return FMRES_IGNORED;
}

// Forward Set Model
public fw_SetModel(entity, const model[])
{
	// Get remove dropped weapons setting
	static Float:removeweapons
	removeweapons = get_pcvar_float(cvar_removedropped)
	
	// Remove weapons?
	if (removeweapons > 0.0)
	{
		// Get entity's classname
		static class[10]
		pev(entity, pev_classname, class, sizeof class - 1)
		
		// Check if it's a weapon box
		if (equal(class, "weaponbox"))
		{
			// They get automatically removed when thinking
			set_pev(entity, pev_nextthink, get_gametime() + removeweapons)
			return;
		}
	}
	
	// Get damage time of grenade
	static Float:dmgtime
	pev(entity, pev_dmgtime, dmgtime)
	
	// Grenade not yet thrown
	if (dmgtime == 0.0)
		return;
	
	if (equal(model[7], "w_he", 4))
	{
		if (g_zombie[pev(entity, pev_owner)]) // [ZOMBIE] - Infection Grenade
		{
			// Give it a glow
			fm_set_rendering(entity, kRenderFxGlowShell, 0, 200, 0, kRenderNormal, 16);
			
			// And a colored trail
			message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
			write_byte(TE_BEAMFOLLOW) // TE id
			write_short(entity) // entity
			write_short(g_trailSpr) // sprite
			write_byte(10) // life
			write_byte(10) // width
			write_byte(0) // r
			write_byte(200) // g
			write_byte(0) // b
			write_byte(200) // brightness
			message_end()
			
			// Set grenade type on the thrown grenade entity
			set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_INFECTION)
		}
		else if (get_pcvar_num(cvar_firegrenades)) // [HUMAN] - Fire Grenade
		{
			// Give it a glow
			fm_set_rendering(entity, kRenderFxGlowShell, 200, 0, 0, kRenderNormal, 16);
			
			// And a colored trail
			message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
			write_byte(TE_BEAMFOLLOW) // TE id
			write_short(entity) // entity
			write_short(g_trailSpr) // sprite
			write_byte(10) // life
			write_byte(10) // width
			write_byte(200) // r
			write_byte(0) // g
			write_byte(0) // b
			write_byte(200) // brightness
			message_end()
			
			// Set grenade type on the thrown grenade entity
			set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_NAPALM)
		}
	}
	else if (equal(model[7], "w_fl", 4) && get_pcvar_num(cvar_frostgrenades)) // Frost Grenade
	{
		// Give it a glow
		fm_set_rendering(entity, kRenderFxGlowShell, 0, 100, 200, kRenderNormal, 16);
		
		// And a colored trail
		message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
		write_byte(TE_BEAMFOLLOW) // TE id
		write_short(entity) // entity
		write_short(g_trailSpr) // sprite
		write_byte(10) // life
		write_byte(10) // width
		write_byte(0) // r
		write_byte(100) // g
		write_byte(200) // b
		write_byte(200) // brightness
		message_end()
		
		// Set grenade type on the thrown grenade entity
		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_FROST)
	}
	else if (equal(model[7], "w_sm", 4) && get_pcvar_num(cvar_flaregrenades)) // Flare
	{
		// Make the flare color
		static rgb[3]
		switch (get_pcvar_num(cvar_flarecolor))
		{
			case 0: // white
			{
				rgb[0] = 255 // r
				rgb[1] = 255 // g
				rgb[2] = 255 // b
			}
			case 1: // red
			{
				rgb[0] = random_num(50,255) // r
				rgb[1] = 0 // g
				rgb[2] = 0 // b
			}
			case 2: // green
			{
				rgb[0] = 0 // r
				rgb[1] = random_num(50,255) // g
				rgb[2] = 0 // b
			}
			case 3: // blue
			{
				rgb[0] = 0 // r
				rgb[1] = 0 // g
				rgb[2] = random_num(50,255) // b
			}
			case 4: // random (all colors)
			{
				rgb[0] = random_num(50,200) // r
				rgb[1] = random_num(50,200) // g
				rgb[2] = random_num(50,200) // b
			}
			case 5: // random (r,g,b)
			{
				switch (random_num(1, 3))
				{
					case 1: // red
					{
						rgb[0] = random_num(50,255) // r
						rgb[1] = 0 // g
						rgb[2] = 0 // b
					}
					case 2: // green
					{
						rgb[0] = 0 // r
						rgb[1] = random_num(50,255) // g
						rgb[2] = 0 // b
					}
					case 3: // blue
					{
						rgb[0] = 0 // r
						rgb[1] = 0 // g
						rgb[2] = random_num(50,255) // b
					}
				}
			}
		}
		
		// Give it a glow
		fm_set_rendering(entity, kRenderFxGlowShell, rgb[0], rgb[1], rgb[2], kRenderNormal, 16);
		
		// And a colored trail
		message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
		write_byte(TE_BEAMFOLLOW) // TE id
		write_short(entity) // entity
		write_short(g_trailSpr) // sprite
		write_byte(10) // life
		write_byte(10) // width
		write_byte(rgb[0]) // r
		write_byte(rgb[1]) // g
		write_byte(rgb[2]) // b
		write_byte(200) // brightness
		message_end()
		
		// Set grenade type on the thrown grenade entity
		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_FLARE)
		
		// Set flare color on the thrown grenade entity
		set_pev(entity, PEV_FLARE_COLOR, rgb)
	}
}

// Ham Grenade Think Forward
public fw_ThinkGrenade(entity)
{
	// Get damage time of grenade
	static Float:dmgtime
	pev(entity, pev_dmgtime, dmgtime)
	
	// Check if it's time to go off
	if (dmgtime > get_gametime())
		return HAM_IGNORED;
	
	// Check if it's one of our custom nades
	switch (pev(entity, PEV_NADE_TYPE))
	{
		case NADE_TYPE_INFECTION: // Infection Bomb
		{
			infection_explode(entity)
		}
		case NADE_TYPE_NAPALM: // Napalm Grenade
		{
			fire_explode(entity)
		}
		case NADE_TYPE_FROST: // Frost Grenade
		{
			frost_explode(entity)
		}
		case NADE_TYPE_FLARE: // Flare
		{			
			// Light up when it's stopped on ground
			if ((pev(entity, pev_flags) & FL_ONGROUND) && fm_get_speed(entity) < 10)
			{
				// Flare sound
				engfunc(EngFunc_EmitSound, entity, CHAN_WEAPON, grenade_flare[random_num(0, sizeof grenade_flare - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
				
				// Our task params
				static params[5]
				params[0] = entity // entity id
				params[1] = get_pcvar_num(cvar_flareduration)/5 // duration
				
				// Retrieve flare color from entity
				pev(entity, PEV_FLARE_COLOR, params[2]) // params[2] r - params[3] g - params[4] b
				
				// Call our lighting task
				set_task(0.1, "flare_lighting", TASK_NADES, params, sizeof params)
			}
			else
			{
				// Delay the explosion until we hit ground
				set_pev(entity, pev_dmgtime, get_gametime() + 0.5)
				return HAM_IGNORED;
			}
		}
		default: return HAM_IGNORED;
	}
	
	return HAM_SUPERCEDE;
}

// Forward Player PreThink
public fw_PlayerPreThink(id)
{
	// Not alive
	if (!is_user_alive(id))
		return;
	
	// Silent footsteps for zombies?
	if (g_zombie[id] && !g_nemesis[id] && get_pcvar_num(cvar_zombiesilent))
		set_pev(id, pev_flTimeStepSound, STEPTIME_SILENT)
	
	// Set Player MaxSpeed
	if (g_frozen[id])
	{
		set_pev(id, pev_velocity, Float:{0.0,0.0,0.0}) // stop motion
		set_pev(id, pev_maxspeed, 1.0) // prevent from moving
	}
	else if (!g_freezetime)
	{
		if (g_zombie[id])
		{
			if (g_nemesis[id])
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_nemspd))
			else
				set_pev(id, pev_maxspeed, float(g_zclass_spd[g_zombieclass[id]]))
		}
		else
		{
			if (g_survivor[id])
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_survspd))
			else
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_humanspd))
		}
	}
	
	// Should Leap?
	if (allowed_leap(id))
	{
		// Get force and height cvars
		static force, height, Float:velocity[3]
		force = g_survivor[id] ? get_pcvar_num(cvar_leapsurvivorforce) : g_nemesis[id] ? get_pcvar_num(cvar_leapnemesisforce) : get_pcvar_num(cvar_leapzombiesforce)
		height = g_survivor[id] ? get_pcvar_num(cvar_leapsurvivorheight) : g_nemesis[id] ? get_pcvar_num(cvar_leapnemesisheight) : get_pcvar_num(cvar_leapzombiesheight)
		
		// Make velocity vector
		velocity_by_aim(id, force, velocity)
		
		// Set custom height
		velocity[2] = float(height)
		
		// Apply the new velocity
		set_pev(id, pev_velocity, velocity)
		
		// Set the current leap time
		g_lastleaptime[id] = get_gametime()
	}
	
	// Should be Pain Shock Free?
	if (allowed_painshockfree(id))
	{
		// Remember his velocity
		pev(id, pev_velocity, g_velocity[id])
		g_restorevel[id] = true
	}
}

// Forward Player PreThink Post
public fw_PlayerPreThink_Post(id)
{
	// Pain Shock Free: need to restore velocity?
	if (!g_restorevel[id])
		return FMRES_IGNORED;
	
	g_restorevel[id] = false
	
	// Not alive
	if (!is_user_alive(id))
		return FMRES_IGNORED;
	
	// Driving a vehicle
	if (pev(id, pev_flags) & FL_ONTRAIN)
		return FMRES_IGNORED;
	
	// NOTE: within DLL PlayerPreThink Jump() function is called;
	// there is a conveyor velocity addiction we should care of
	static groundent
	groundent = pev(id, pev_groundentity)
	
	if (pev_valid(groundent) && (pev(groundent, pev_flags) & FL_CONVEYOR))
	{
		// Add pev_basevelocity to our stored velocity
		static Float:tempvel[3]
		pev(id, pev_basevelocity, tempvel)
		xs_vec_add(g_velocity[id], tempvel, g_velocity[id])
	}
	
	// Restore previous velocity
	set_pev(id, pev_velocity, g_velocity[id])
	return FMRES_HANDLED;
}

/*================================================================================
 [Client Commands]
=================================================================================*/

// Say "/zpmenu"
public clcmd_saymenu(id)
{
	show_menu_game(id) // show game menu
}

// Say "/unstuck"
public clcmd_sayunstuck(id)
{
	menu_game(id, 3) // try to get unstuck
}

// Nightvision toggle
public clcmd_nvgtoggle(id)
{
	if (g_nvision[id])
	{
		// Enable-disable
		g_nvisionenabled[id] = !(g_nvisionenabled[id])
		
		// Custom nvg?
		if (get_pcvar_num(cvar_cnvg))
		{
			remove_task(id+TASK_NVISION);
			set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
		}
		else
			set_user_gnvision(id, g_nvisionenabled[id])
	}
	
	return PLUGIN_HANDLED;
}

// Weapon Drop
public clcmd_drop(id)
{
	// Survivor should stick with M249
	if (g_survivor[id])
		return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

// Buy BP Ammo
public clcmd_buyammo(id)
{
	// Not alive or infinite ammo setting enabled
	if (get_pcvar_num(cvar_infammo) || !is_user_alive(id))
		return PLUGIN_HANDLED;
	
	// Not human
	if (g_zombie[id])
	{
		zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_HUMAN_ONLY")
		return PLUGIN_HANDLED;
	}
	
	// Not enough ammo packs
	if (g_ammopacks[id] < 1)
	{
		zp_colored_print(id, "^x04[ZP]^x01 %L", id, "NOT_ENOUGH_AMMO")
		return PLUGIN_HANDLED;
	}
	
	// Get user weapons
	static weapons[32], num, i, currentammo, weaponid, refilled
	num = 0 // reset passed weapons count (bugfix)
	refilled = false
	get_user_weapons(id, weapons, num)
	
	// Loop through them and give the right ammo type
	for (i = 0; i < num; i++)
	{
		// Prevents re-indexing the array
		weaponid = weapons[i]
		
		if ((1<<weaponid) & PRIMARY_WEAPONS_BIT_SUM) // primary
		{
			// Get current ammo of the weapon
			currentammo = fm_get_user_bpammo(id, weaponid)
			
			// Check if we are close to the BP ammo limit
			if (currentammo < MAXBPAMMO[weaponid]-BUYAMMO[weaponid])
			{
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[weaponid]) // ammo id
				write_byte(BUYAMMO[weaponid]) // ammo amount
				message_end()
				
				// Increase BP ammo
				fm_set_user_bpammo(id, weaponid, currentammo + BUYAMMO[weaponid])
				
				refilled = true
			}
			else if (currentammo < MAXBPAMMO[weaponid])
			{
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[weaponid]) // ammo id
				write_byte(MAXBPAMMO[weaponid]-currentammo) // ammo amount
				message_end()
				
				// Reached the limit
				fm_set_user_bpammo(id, weaponid, MAXBPAMMO[weaponid])
				
				refilled = true
			}
		}
		else if ((1<<weaponid) & SECONDARY_WEAPONS_BIT_SUM) // secondary
		{
			// Get current ammo of the weapon
			currentammo = fm_get_user_bpammo(id, weaponid)
			
			// Check if we are close to the BP ammo limit
			if (currentammo < MAXBPAMMO[weaponid]-BUYAMMO[weaponid])
			{
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[weaponid]) // ammo id
				write_byte(BUYAMMO[weaponid]) // ammo amount
				message_end()
				
				// Increase BP ammo
				fm_set_user_bpammo(id, weaponid, currentammo + BUYAMMO[weaponid])
				
				refilled = true
			}
			else if (currentammo < MAXBPAMMO[weaponid])
			{
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[weaponid]) // ammo id
				write_byte(MAXBPAMMO[weaponid]-currentammo) // ammo amount
				message_end()
				
				// Reached the limit
				fm_set_user_bpammo(id, weaponid, MAXBPAMMO[weaponid])
				
				refilled = true
			}
		}
	}
	
	// Weapons already have full ammo
	if (!refilled) return PLUGIN_HANDLED;
	
	// Deduce ammo packs, play clip purchase sound, and notify the player
	g_ammopacks[id]--
	engfunc(EngFunc_EmitSound, id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
	zp_colored_print(id, "^x04[ZP]^x01 %L", id, "AMMO_BOUGHT")
	
	return PLUGIN_HANDLED;
}

// Block Team Change
public clcmd_changeteam(id)
{
	static team
	team = fm_get_user_team(id)
	
	// Unless it's a spectator joining the game
	if (team == CS_TEAM_SPECTATOR || team == CS_TEAM_UNASSIGNED)
		return PLUGIN_CONTINUE;
	
	// Pressing 'M' (chooseteam) ingame should show the main menu instead
	show_menu_game(id)
	return PLUGIN_HANDLED;
}

/*================================================================================
 [Menus]
=================================================================================*/

// Game Menu
show_menu_game(id)
{
	static menu[250], len
	len = 0
	
	// Title
	len += formatex(menu[len], sizeof menu - 1 - len, "\y%s^n^n", g_modname)
	
	// 1. Buy weapons
	if (get_pcvar_num(cvar_buycustom))
		len += formatex(menu[len], sizeof menu - 1 - len, "\r1.\w %L^n", id, "MENU_BUY")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d1. %L^n", id, "MENU_BUY")
	
	// 2. Extra items
	if (!g_survivor[id] && !g_nemesis[id] && get_pcvar_num(cvar_extraitems) && is_user_alive(id))
		len += formatex(menu[len], sizeof menu - 1 - len, "\r2.\w %L^n", id, "MENU_EXTRABUY")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d2. %L^n", id, "MENU_EXTRABUY")
	
	// 3. Zombie class
	if (get_pcvar_num(cvar_zclasses))
		len += formatex(menu[len], sizeof menu - 1 - len, "\r3.\w %L^n", id,"MENU_ZCLASS")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d3. %L^n", id,"MENU_ZCLASS")
	
	// 4. Unstuck
	if (is_user_alive(id))
		len += formatex(menu[len], sizeof menu - 1 - len, "\r4.\w %L^n", id, "MENU_UNSTUCK")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d4. %L^n", id, "MENU_UNSTUCK")
	
	// 5-6. Help and join spec
	len += formatex(menu[len], sizeof menu - 1 - len, "\r5.\w %L^n^n\r6.\w %L^n^n", id, "MENU_INFO", id, "MENU_SPECTATOR")
	
	// 9. Admin menu
	if (get_user_flags(id) & ACCESS_FLAG)
		len += formatex(menu[len], sizeof menu - 1 - len, "\r9.\w %L", id, "MENU_ADMIN")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d9. %L", id, "MENU_ADMIN")
	
	// 0. Exit
	len += formatex(menu[len], sizeof menu - 1 - len, "^n^n\r0.\w %L", id, "MENU_EXIT")
	
	show_menu(id, KEYSMENU, menu, -1, "Game Menu")
}

// Buy Menu 1
public show_menu_buy1(taskid)
{
	// Get player id
	static id
	(taskid > g_maxplayers) ? (id = ID_SPAWN) : (id = taskid);
	
	// Zombies or survivors get no guns
	if (g_zombie[id] || g_survivor[id] || !is_user_alive(id))
		return;
	
	// Bots pick their weapons randomly
	if (is_user_bot(id))
	{
		buy_primary_weapon(id, random_num(0, sizeof g_primary_items - 1))
		menu_buy2(id, random_num(0, sizeof g_secondary_items - 1))
		return;
	}
	
	// Automatic selection enabled for player and menu called on spawn event
	if (WPN_AUTO_ON && taskid > g_maxplayers)
	{
		buy_primary_weapon(id, WPN_AUTO_PRI)
		menu_buy2(id, WPN_AUTO_SEC)
		return;
	}
	
	static menu[300], len, weap
	len = 0
	
	// Title
	len += formatex(menu[len], sizeof menu - 1 - len, "\y%L \r[%d-%d]^n^n", id, "MENU_BUY1_TITLE", WPN_STARTID+1, min(WPN_STARTID+7, WPN_MAXIDS))
	
	// 1-7. Weapon List
	for (weap = WPN_STARTID; weap < min(WPN_STARTID+7, WPN_MAXIDS); weap++)
		len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %s^n", weap-WPN_STARTID+1, WEAPONNAMES[get_weaponid(g_primary_items[weap])])
	
	// 8. Auto Select
	len += formatex(menu[len], sizeof menu - 1 - len, "^n\r8.\w %L \y[%L]", id, "MENU_AUTOSELECT", id, (WPN_AUTO_ON) ? "MOTD_ENABLED" : "MOTD_DISABLED")
	
	// 9. Next/Back - 0. Exit
	len += formatex(menu[len], sizeof menu - 1 - len, "^n^n\r9.\w %L/%L^n^n\r0.\w %L", id, "MENU_NEXT", id, "MENU_BACK", id, "MENU_EXIT")
	
	show_menu(id, KEYSMENU, menu, -1, "Buy Menu 1")
}

// Buy Menu 2
show_menu_buy2(id)
{
	static menu[250], len, weap
	len = 0
	
	// Title
	len += formatex(menu[len], sizeof menu - 1 - len, "\y%L^n", id, "MENU_BUY2_TITLE")
	
	// 1-6. Weapon List
	for (weap = 0; weap < sizeof g_secondary_items; weap++)
		len += formatex(menu[len], sizeof menu - 1 - len, "^n\r%d.\w %s", weap+1, WEAPONNAMES[get_weaponid(g_secondary_items[weap])])
	
	// 8. Auto Select
	len += formatex(menu[len], sizeof menu - 1 - len, "^n^n\r8.\w %L \y[%L]", id, "MENU_AUTOSELECT", id, (WPN_AUTO_ON) ? "MOTD_ENABLED" : "MOTD_DISABLED")
	
	// 0. Exit
	len += formatex(menu[len], sizeof menu - 1 - len, "^n^n\r0.\w %L", id, "MENU_EXIT")
	
	show_menu(id, KEYSMENU, menu, -1, "Buy Menu 2")
}

// Extra Items Menu
show_menu_extras(id)
{
	static menu[400], len, item
	len = 0
	
	// Title
	len += formatex(menu[len], sizeof menu - 1 - len, "\y%L [%L] \r[%d-%d]^n^n", id, "MENU_EXTRA_TITLE", id, (g_zombie[id]) ? "CLASS_ZOMBIE" : "CLASS_HUMAN", EXTRAS_STARTID+1, min(EXTRAS_STARTID+7, g_extraitem_i))
	
	// 1-7. Item List
	for (item = EXTRAS_STARTID; item < min(EXTRAS_STARTID+7, g_extraitem_i); item++)
	{
		// Unavailable item
		if ((g_zombie[id] && g_extraitem_team[item] == ZP_TEAM_HUMAN) || (!g_zombie[id] && g_extraitem_team[item] == ZP_TEAM_ZOMBIE) || (item == EXTRA_NVISION && !get_pcvar_num(cvar_extra_nvision)) || (item == EXTRA_ANTIDOTE && !get_pcvar_num(cvar_extra_antidote)) || (item == EXTRA_MADNESS && !get_pcvar_num(cvar_extra_madness)) || (item == EXTRA_INFBOMB && !get_pcvar_num(cvar_extra_infbomb)) || (item >= EXTRA_WEAPONS_STARTID && item <= EXTRAS_CUSTOM_STARTID-1 && !get_pcvar_num(cvar_extra_weapons)))
		{
			// Check if it's one of the hardcoded items and set the correct caption
			switch (item)
			{
				case EXTRA_NVISION: len += formatex(menu[len], sizeof menu - 1 - len, "\d%d %L", item-EXTRAS_STARTID+1, id, "MENU_EXTRA1")
				case EXTRA_ANTIDOTE: len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %L", item-EXTRAS_STARTID+1, id, "MENU_EXTRA2")
				case EXTRA_MADNESS: len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %L", item-EXTRAS_STARTID+1, id, "MENU_EXTRA3")
				case EXTRA_INFBOMB: len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %L", item-EXTRAS_STARTID+1, id, "MENU_EXTRA4")
				default: len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %s", item-EXTRAS_STARTID+1, g_extraitem_name[item])
			}
			// Item Cost
			len += formatex(menu[len], sizeof menu - 1 - len, " %d %L^n", g_extraitem_cost[item], id, "AMMO_PACKS2")
		}
		else
		{
			// Check if it's one of the hardcoded items and set the correct caption
			switch (item)
			{
				case EXTRA_NVISION: len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %L", item-EXTRAS_STARTID+1, id, "MENU_EXTRA1")
				case EXTRA_ANTIDOTE: len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %L", item-EXTRAS_STARTID+1, id, "MENU_EXTRA2")
				case EXTRA_MADNESS: len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %L", item-EXTRAS_STARTID+1, id, "MENU_EXTRA3")
				case EXTRA_INFBOMB: len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %L", item-EXTRAS_STARTID+1, id, "MENU_EXTRA4")
				default: len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %s", item-EXTRAS_STARTID+1, g_extraitem_name[item])
			}
			// Item Cost
			len += formatex(menu[len], sizeof menu - 1 - len, " \y%d %L^n", g_extraitem_cost[item], id, "AMMO_PACKS2")
		}
	}
	
	// 8. Back - 9. Next - 0. Exit
	len += formatex(menu[len], sizeof menu - 1 - len, "^n\r8.\w %L^n\r9.\w %L^n^n\r0.\w %L", id, "MENU_BACK", id, "MENU_NEXT", id, "MENU_EXIT")
	
	show_menu(id, KEYSMENU, menu, -1, "Extra Items")
}

// Zombie Class Menu
public show_menu_zclass(id)
{
	// Player disconnected
	if (!is_user_connected(id))
		return;
	
	// Bots pick their zombie class randomly
	if (is_user_bot(id))
	{
		g_zombieclassnext[id] = random_num(0, g_zclass_i - 1)
		return;
	}
	
	static menu[400], len, class
	len = 0
	
	// Title
	len += formatex(menu[len], sizeof menu - 1 - len, "\y%L \r[%d-%d]^n^n", id, "MENU_ZCLASS_TITLE", ZCLASSES_STARTID+1, min(ZCLASSES_STARTID+7, g_zclass_i))
	
	// 1-7. Class List
	for (class = ZCLASSES_STARTID; class < min(ZCLASSES_STARTID+7, g_zclass_i); class++)
	{
		if (class == g_zombieclassnext[id])
			len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %s %s^n", class-ZCLASSES_STARTID+1, g_zclass_name[class], g_zclass_info[class])
		else
			len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %s\y %s^n", class-ZCLASSES_STARTID+1, g_zclass_name[class], g_zclass_info[class])
	}
	
	// 8. Back - 9. Next - 0. Exit
	len += formatex(menu[len], sizeof menu - 1 - len, "^n\r8.\w %L^n\r9.\w %L^n^n\r0.\w %L", id, "MENU_BACK", id, "MENU_NEXT", id, "MENU_EXIT")
	
	show_menu(id, KEYSMENU, menu, -1, "Zombie Class Menu")
}

// Help Menu
public show_menu_info(id)
{
	// Player disconnected
	if (!is_user_connected(id))
		return;
	
	static menu[150]
	
	formatex(menu, sizeof menu - 1, "\y%L^n^n\r1.\w %L^n\r2.\w %L^n\r3.\w %L^n\r4.\w %L^n^n\r0.\w %L", id, "MENU_INFO_TITLE", id, "MENU_INFO1", id,"MENU_INFO2", id,"MENU_INFO3", id,"MENU_INFO4", id, "MENU_EXIT")
	show_menu(id, KEYSMENU, menu, -1, "Mod Info")
}

// Admin Menu
show_menu_admin(id)
{
	static menu[250], len
	len = 0
	
	// Title
	len += formatex(menu[len], sizeof menu - 1 - len, "\y%L^n^n", id, "MENU_ADMIN_TITLE")
	
	// 1. Zombiefy/Humanize command
	if (!g_endround && !g_swarmround && !g_nemround && !g_survround && !g_plagueround && !task_exists(TASK_WELCOMEMSG))
		len += formatex(menu[len], sizeof menu - 1 - len, "\r1.\w %L^n", id, "MENU_ADMIN1")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d1. %L^n", id, "MENU_ADMIN1")
	
	// 2. Nemesis command
	if (g_newround && !g_endround && get_pcvar_num(cvar_nem) && !task_exists(TASK_WELCOMEMSG))
		len += formatex(menu[len], sizeof menu - 1 - len, "\r2.\w %L^n", id, "MENU_ADMIN2")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d2. %L^n", id, "MENU_ADMIN2")
	
	// 3. Survivor command
	if (g_newround && !g_endround && get_pcvar_num(cvar_surv) && !task_exists(TASK_WELCOMEMSG))
		len += formatex(menu[len], sizeof menu - 1 - len, "\r3.\w %L^n", id, "MENU_ADMIN3")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d3. %L^n", id, "MENU_ADMIN3")
	
	// 4. Respawn command
	if (!g_endround && !g_survround && !g_swarmround && !g_nemround && !g_plagueround)
		len += formatex(menu[len], sizeof menu - 1 - len, "\r4.\w %L^n", id, "MENU_ADMIN4")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d4. %L^n", id, "MENU_ADMIN4")
	
	// 5. Swarm mode command
	if (allowed_swarm())
		len += formatex(menu[len], sizeof menu - 1 - len, "\r5.\w %L^n", id, "MENU_ADMIN5")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d5. %L^n", id, "MENU_ADMIN5")
	
	// 6. Multi infection command
	if (allowed_multi())
		len += formatex(menu[len], sizeof menu - 1 - len, "\r6.\w %L^n", id, "MENU_ADMIN6")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d6. %L^n", id, "MENU_ADMIN6")
	
	// 7. Plague mode command
	if (allowed_plague())
		len += formatex(menu[len], sizeof menu - 1 - len, "\r7.\w %L^n", id, "MENU_ADMIN7")
	else
		len += formatex(menu[len], sizeof menu - 1 - len, "\d7. %L^n", id, "MENU_ADMIN7")
	
	// 0. Exit
	len += formatex(menu[len], sizeof menu - 1 - len, "^n\r0.\w %L", id, "MENU_EXIT")
	
	show_menu(id, KEYSMENU, menu, -1, "Admin Menu")
}

// Player List Menu
show_menu_player_list(id)
{
	static menu[400], len, player, name[32]
	len = 0
	
	// Title
	switch (PL_ACTION)
	{
		case 0: len += formatex(menu[len], sizeof menu - 1 - len, "\y%L ", id, "MENU_ADMIN1")
		case 1: len += formatex(menu[len], sizeof menu - 1 - len, "\y%L ", id, "MENU_ADMIN2")
		case 2: len += formatex(menu[len], sizeof menu - 1 - len, "\y%L ", id, "MENU_ADMIN3")
		case 3: len += formatex(menu[len], sizeof menu - 1 - len, "\y%L ", id, "MENU_ADMIN4")
	}
	len += formatex(menu[len], sizeof menu - 1 - len, "\r[%d-%d]^n^n", PL_STARTID+1, min(PL_STARTID+7, g_maxplayers))
	
	// 1-7. player list
	for (player = PL_STARTID+1; player <= min(PL_STARTID+7, g_maxplayers); player++)
	{
		if (is_user_connected(player)) // check if it's connected
		{
			// Get player's name
			get_user_name(player, name, sizeof name - 1)
			
			// Format text depending on the action to take
			switch (PL_ACTION)
			{
				case 0:
				{
					if (g_zombie[player])
					{
						if (allowed_human(player))
							len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %s \r[%L]^n", player-PL_STARTID, name, id, "CLASS_ZOMBIE")
						else
							len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %s [%L]^n", player-PL_STARTID, name, id, "CLASS_ZOMBIE")
					}
					else
					{
						if (allowed_zombie(player))
							len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %s \y[%L]^n", player-PL_STARTID, name, id, "CLASS_HUMAN")
						else
							len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %s [%L]^n", player-PL_STARTID, name, id, "CLASS_HUMAN")
					}
				}
				case 1:
				{
					if (allowed_nemesis(player))
						len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %s^n", player-PL_STARTID, name)
					else
						len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %s^n", player-PL_STARTID, name)
				}
				case 2:
				{
					if (allowed_survivor(player))
						len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %s^n", player-PL_STARTID, name)
					else
						len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %s^n", player-PL_STARTID, name)
				}
				case 3:
				{
					if (allowed_respawn(player))
						len += formatex(menu[len], sizeof menu - 1 - len, "\r%d.\w %s^n", player-PL_STARTID, name)
					else
						len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. %s^n", player-PL_STARTID, name)
				}
			}
		}
		else
		{
			len += formatex(menu[len], sizeof menu - 1 - len, "\d%d. -----^n", player-PL_STARTID)
		}
	}
	
	// 8. Back - 9. Next - 0. Exit
	len += formatex(menu[len], sizeof menu - 1 - len, "^n\r8.\w %L^n\r9.\w %L^n^n\r0.\w %L", id, "MENU_BACK", id, "MENU_NEXT", id, "MENU_EXIT")
	
	show_menu(id, KEYSMENU, menu, -1, "Player List Menu")
}

/*================================================================================
 [Menu Handlers]
=================================================================================*/

// Game Menu
public menu_game(id, key)
{
	switch (key)
	{
		case 0: // Buy Weapons
		{
			// Custom buy menus enabled?
			if (get_pcvar_num(cvar_buycustom))
			{
				// Disable the remember selection setting
				WPN_AUTO_ON = 0
				zp_colored_print(id, "^x04[ZP]^x01 %L", id ,"BUY_ENABLED")
				
				// Show menu if player hasn't yet bought anything
				if (g_canbuy[id]) show_menu_buy1(id)
			}
			else
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
		}
		case 1: // Extra Items
		{
			// Extra items enabled?
			if (get_pcvar_num(cvar_extraitems))
			{
				// Check whether the player is able to buy anything
				if (is_user_alive(id) && !g_survivor[id] && !g_nemesis[id])
					show_menu_extras(id)
				else
					zp_colored_print(id, "^x04[ZP]^x01 %L", id ,"CMD_NOT")
			}
			else
				zp_colored_print(id, "^x04[ZP]^x01 %L", id ,"CMD_NOT_EXTRAS")
		}
		case 2: // Zombie Classes
		{
			// Zombie classes enabled?
			if (get_pcvar_num(cvar_zclasses))
				show_menu_zclass(id)
			else
				zp_colored_print(id, "^x04[ZP]^x01 %L", id ,"CMD_NOT_ZCLASSES")
		}
		case 3: // Unstuck
		{
			// Check if player is stuck
			if (is_user_alive(id) && is_player_stuck(id))
			{
				// Spawn randomly / get back to base
				if (get_pcvar_num(cvar_randspawn))
					do_random_spawn(id)
				else
					dllfunc(DLLFunc_Spawn, id)
			}
			else
				zp_colored_print(id, "^x04[ZP]^x01 %L", id ,"CMD_NOT_STUCK")
		}
		case 4: // Help Menu
		{
			show_menu_info(id)
		}
		case 5: // Join Spectator
		{
			// If alive
			if (is_user_alive(id))
			{
				// Check that we still have both humans and zombies to keep the round going
				check_round(id)
				
				// Kill him before he switches team
				dllfunc(DLLFunc_ClientKill, id)
			}
			
			// Temporarily save player stats?
			if (get_pcvar_num(cvar_statssave)) save_stats(id)
			
			// Remove previous tasks
			remove_task(id+TASK_TEAM)
			remove_task(id+TASK_MODEL)
			remove_task(id+TASK_FLASH)
			remove_task(id+TASK_CHARGE)
			remove_task(id+TASK_SPAWN)
			remove_task(id+TASK_BLOOD)
			
			// Then move him to the spectator team
			fm_set_user_team(id, CS_TEAM_SPECTATOR)
			fm_set_user_team_msg(id+TASK_TEAM)
		}
		case 8: // Admin Menu
		{
			// Check if player has the required access
			if (get_user_flags(id) & ACCESS_FLAG)
				show_menu_admin(id)
			else
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT_ACCESS")
		}
	}
	
	return PLUGIN_HANDLED;
}

// Buy Menu 1
public menu_buy1(id, key)
{
	// Zombies or survivors get no guns
	if (g_zombie[id] || g_survivor[id] || !is_user_alive(id))
		return PLUGIN_HANDLED;
	
	// Special keys / weapon list exceeded
	if (key >= MENU_KEY_AUTOSELECT || WPN_SELECTION >= WPN_MAXIDS)
	{
		switch (key)
		{
			case MENU_KEY_AUTOSELECT: // toggle auto select
			{
				WPN_AUTO_ON = 1 - WPN_AUTO_ON
			}
			case MENU_KEY_NEXT: // next/back
			{
				if (WPN_STARTID+7 < WPN_MAXIDS)
					WPN_STARTID += 7
				else
					WPN_STARTID = 0
			}
			case MENU_KEY_EXIT: // exit
			{
				return PLUGIN_HANDLED;
			}
		}
		
		// Show buy menu again
		show_menu_buy1(id)
		return PLUGIN_HANDLED;
	}
	
	// Store selected weapon id
	WPN_AUTO_PRI = WPN_SELECTION
	
	// Buy primary weapon
	buy_primary_weapon(id, WPN_AUTO_PRI)
	
	// Show pistols menu
	show_menu_buy2(id)
	
	return PLUGIN_HANDLED;
}

// Buy Primary Weapon
buy_primary_weapon(id, selection)
{
	// Drop previous weapons
	drop_weapons(id, 1)
	drop_weapons(id, 2)
	
	// Strip off from weapons
	fm_strip_user_weapons(id)
	fm_give_item(id, "weapon_knife")
	
	// Get weapon index
	static weaponid
	weaponid = get_weaponid(g_primary_items[selection])
	
	// Give the new weapon
	fm_give_item(id, g_primary_items[selection])
	fm_set_user_bpammo(id, weaponid, MAXBPAMMO[weaponid])
	
	// Weapons bought
	g_canbuy[id] = false
	
	// Give additional items
	static i
	for (i = 0; i < sizeof g_additional_items; i++)
		fm_give_item(id, g_additional_items[i])
}

// Buy Menu 2
public menu_buy2(id, key)
{	
	// Zombies or survivors get no guns
	if (g_zombie[id] || g_survivor[id] || !is_user_alive(id))
		return PLUGIN_HANDLED;
	
	// Special keys / weapon list exceeded
	if (key >= sizeof g_secondary_items)
	{
		// Toggle autoselect
		if (key == MENU_KEY_AUTOSELECT)
			WPN_AUTO_ON = 1 - WPN_AUTO_ON
		
		// Reshow menu unless user exited
		if (key != MENU_KEY_EXIT)
			show_menu_buy2(id)
		
		return PLUGIN_HANDLED;
	}
	
	// Store selected weapon
	WPN_AUTO_SEC = key
	
	// Drop secondary gun again, in case we picked another (bugfix)
	drop_weapons(id, 2)
	
	// Get weapon index
	static weaponid
	weaponid = get_weaponid(g_secondary_items[key])
	
	// Give the new weapon with full ammo
	fm_give_item(id, g_secondary_items[key])
	fm_set_user_bpammo(id, weaponid, MAXBPAMMO[weaponid])
	
	return PLUGIN_HANDLED;
}

// Extra Items Menu
public menu_extras(id, key)
{
	// Nemesis or Survivor shouldnt get extra items
	if (g_survivor[id] || g_nemesis[id] || !is_user_alive(id))
	{
		zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	
	// Special keys / items list exceeded
	if (key >= MENU_KEY_BACK || EXTRAS_SELECTION >= g_extraitem_i)
	{
		switch (key)
		{
			case MENU_KEY_BACK: // back
			{
				if (EXTRAS_STARTID-7 >= 0) EXTRAS_STARTID -= 7
			}
			case MENU_KEY_NEXT: // next
			{
				if (EXTRAS_STARTID+7 < g_extraitem_i) EXTRAS_STARTID += 7
			}
			case MENU_KEY_EXIT: // exit
			{
				return PLUGIN_HANDLED;
			}
		}
		
		// Show extra items menu again
		show_menu_extras(id)
		return PLUGIN_HANDLED;
	}
	
	// Try to buy the item
	buy_extra_item(id, EXTRAS_SELECTION);
	
	return PLUGIN_HANDLED;
}

// Buy Extra Item
buy_extra_item(id, itemid)
{
	// Check for human only items
	if (g_zombie[id] && g_extraitem_team[itemid] == ZP_TEAM_HUMAN)
	{
		zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_HUMAN_ONLY")
		return;
	}
	
	// Check for zombie only items
	if (!g_zombie[id] && g_extraitem_team[itemid] == ZP_TEAM_ZOMBIE)
	{
		zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_ZOMBIE_ONLY")
		return;
	}
	
	// Check for unavailable items
	if ((itemid == EXTRA_NVISION && !get_pcvar_num(cvar_extra_nvision)) || (itemid == EXTRA_ANTIDOTE && !get_pcvar_num(cvar_extra_antidote)) || (itemid == EXTRA_MADNESS && !get_pcvar_num(cvar_extra_madness)) || (itemid == EXTRA_INFBOMB && !get_pcvar_num(cvar_extra_infbomb)) || (itemid >= EXTRA_WEAPONS_STARTID && itemid <= EXTRAS_CUSTOM_STARTID-1 && !get_pcvar_num(cvar_extra_weapons)))
	{
		zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
		return;
	}
	
	// Check for hard coded items with special conditions
	if ((itemid == EXTRA_ANTIDOTE && (g_endround || g_swarmround || g_nemround || g_survround || g_plagueround || fnGetZombies() <= 1 || (get_pcvar_num(cvar_deathmatch) && !get_pcvar_num(cvar_respawnafterlast) && fnGetHumans() == 1))) || (itemid == EXTRA_MADNESS && g_nodamage[id]) || (itemid == EXTRA_INFBOMB && (g_endround || g_swarmround || g_nemround || g_survround || g_plagueround)))
	{
		zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT_CANTUSE")
		return;
	}
	
	// Check that we have enough ammo packs
	if (g_ammopacks[id] < g_extraitem_cost[itemid])
	{
		zp_colored_print(id, "^x04[ZP]^x01 %L", id, "NOT_ENOUGH_AMMO")
		return;
	}
	
	// Deduce item cost
	g_ammopacks[id] -= g_extraitem_cost[itemid]
	
	// Check which kind of item we're buying
	switch (itemid)
	{
		case EXTRA_NVISION: // Night Vision
		{
			if (!is_user_bot(id))
			{
				g_nvision[id] = true
				g_nvisionenabled[id] = true
				
				// Custom nvg?
				if (get_pcvar_num(cvar_cnvg))
				{
					remove_task(id+TASK_NVISION)
					set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
				}
				else
					set_user_gnvision(id, 1)
			}
			else
				fm_set_bot_nvg(id, 1)
		}
		case EXTRA_ANTIDOTE: // Antidote
		{
			humanme(id, 0)
		}
		case EXTRA_MADNESS: // Zombie Madness
		{
			g_nodamage[id] = true
			infectionFX2(id)
			engfunc(EngFunc_EmitSound, id, CHAN_VOICE, zombie_madness[random_num(0, sizeof zombie_madness - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
			set_task(5.0, "madness_over", id+TASK_BLOOD)
		}
		case EXTRA_INFBOMB: // Infection Bomb
		{
			// Already own one
			if (user_has_weapon(id, CSW_HEGRENADE))
			{
				// Increase BP ammo on it instead
				fm_set_user_bpammo(id, CSW_HEGRENADE, fm_get_user_bpammo(id, CSW_HEGRENADE) + 1)
				
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[CSW_HEGRENADE]) // ammo id
				write_byte(1) // ammo amount
				message_end()
				
				// Play clip purchase sound
				engfunc(EngFunc_EmitSound, id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
				
				return; // stop here
			}
			
			// Give weapon to the player
			fm_give_item(id, "weapon_hegrenade")
		}
		case EXTRA_WEAPONS_STARTID .. EXTRAS_CUSTOM_STARTID-1: // Weapons
		{
			// Get weapon index
			static weaponid
			weaponid = get_weaponid(g_extra_items[itemid-4])
			
			// If we are giving a primary/secondary weapon
			if (MAXBPAMMO[weaponid] > 2)
			{
				// Make user drop the previous one
				if ((1<<weaponid) & PRIMARY_WEAPONS_BIT_SUM)
					drop_weapons(id, 1)
				else
					drop_weapons(id, 2)
				
				// Give full BP ammo for the new one
				fm_set_user_bpammo(id, weaponid, MAXBPAMMO[weaponid])
			}
			// If we are giving a grenade which the user already owns
			else if (user_has_weapon(id, weaponid))
			{
				// Increase BP ammo on it instead
				fm_set_user_bpammo(id, weaponid, fm_get_user_bpammo(id, weaponid) + 1)
				
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[weaponid]) // ammo id
				write_byte(1) // ammo amount
				message_end()
				
				// Play clip purchase sound
				engfunc(EngFunc_EmitSound, id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
				
				return; // stop here
			}
			
			// Give weapon to the player
			fm_give_item(id, g_extra_items[itemid-4])
		}
		default: // Custom additions
		{
			// Item selected forward
			ExecuteForward(g_fwExtraItemSelected, g_fwDummyResult, id, itemid);
		}
	}
}

// Zombie Class Menu
public menu_zclass(id, key)
{
	// Special keys / items list exceeded
	if (key >= MENU_KEY_BACK || ZCLASSES_SELECTION >= g_zclass_i)
	{
		switch (key)
		{
			case MENU_KEY_BACK: // back
			{
				if (ZCLASSES_STARTID-7 >= 0) ZCLASSES_STARTID -= 7
			}
			case MENU_KEY_NEXT: // next
			{
				if (ZCLASSES_STARTID+7 < g_zclass_i) ZCLASSES_STARTID += 7
			}
			case MENU_KEY_EXIT: // exit
			{
				return PLUGIN_HANDLED;
			}
		}
		
		// Show extra items menu again
		show_menu_zclass(id)
		return PLUGIN_HANDLED;
	}
	
	// Store selection for the next infection
	g_zombieclassnext[id] = ZCLASSES_SELECTION;
	
	// Show selected zombie class info and stats
	zp_colored_print(id, "^x04[ZP]^x01 %L: %s", id, "ZOMBIE_SELECT", g_zclass_name[g_zombieclassnext[id]])
	zp_colored_print(id, "^x04[ZP]^x01 %L: %d %L: %d %L: %d %L: %d%%", id, "ZOMBIE_ATTRIB1", g_zclass_hp[g_zombieclassnext[id]], id, "ZOMBIE_ATTRIB2", g_zclass_spd[g_zombieclassnext[id]],
	id, "ZOMBIE_ATTRIB3", floatround(g_zclass_grav[g_zombieclassnext[id]]*800), id, "ZOMBIE_ATTRIB4", floatround(g_zclass_kb[g_zombieclassnext[id]]*100))
	
	return PLUGIN_HANDLED;
}

// Info Menu
public menu_info(id, key)
{
	static motd[1000], len
	len = 0
	
	switch (key)
	{
		case 0: // General
		{
			static weather, lights[2]
			weather = 0
			
			// Get light style
			get_pcvar_string(cvar_lighting, lights, sizeof lights - 1)
			strtolower(lights)
			
			len += formatex(motd[len], sizeof motd - 1 - len, "%L ", id, "MOTD_INFO11", "Zombie Plague", PLUGIN_VERSION, "MeRcyLeZZ")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO12")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_A")
			
			#if defined AMBIENCE_FOG
			len += formatex(motd[len], sizeof motd - 1 - len, (weather < 1) ? " %L" : ". %L", id, "MOTD_FOG")
			weather++
			#endif
			#if defined AMBIENCE_RAIN
			len += formatex(motd[len], sizeof motd - 1 - len, (weather < 1) ? " %L" : ". %L", id, "MOTD_RAIN")
			weather++
			#endif
			#if defined AMBIENCE_SNOW
			len += formatex(motd[len], sizeof motd - 1 - len, (weather < 1) ? " %L" : ". %L", id, "MOTD_SNOW")
			weather++
			#endif
			if (weather < 1) len += formatex(motd[len], sizeof motd - 1 - len, " %L", id, "MOTD_DISABLED")
			
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_B", lights)
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_C", id, get_pcvar_num(cvar_triggered) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			if (lights[0] == 'a' && get_pcvar_num(cvar_thunder)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_D", get_pcvar_num(cvar_thunder))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_E", id, get_pcvar_num(cvar_removedoors) > 0 ? get_pcvar_num(cvar_removedoors) > 1 ? "MOTD_DOORS" : "MOTD_ROTATING" : "MOTD_ENABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_F", id, get_pcvar_num(cvar_deathmatch) > 0 ? get_pcvar_num(cvar_deathmatch) > 1 ? get_pcvar_num(cvar_deathmatch) > 2 ? "MOTD_ENABLED" : "MOTD_DM_ZOMBIE" : "MOTD_DM_HUMAN" : "MOTD_DISABLED")
			if (get_pcvar_num(cvar_deathmatch)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_G", get_pcvar_num(cvar_spawnprotection))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_H", id, get_pcvar_num(cvar_randspawn) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_I", id, get_pcvar_num(cvar_extraitems) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_J", id, get_pcvar_num(cvar_zclasses) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_K", id, get_pcvar_num(cvar_cnvg) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO1_L", id, get_pcvar_num(cvar_cflash) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			
			show_motd(id, motd)
		}
		case 1: // Humans
		{
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_A", get_pcvar_num(cvar_humanhp))
			if (get_pcvar_num(cvar_humanlasthp) > 0) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_B", get_pcvar_num(cvar_humanlasthp))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_C", get_pcvar_num(cvar_humanspd))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_D", floatround(get_pcvar_float(cvar_humangravity)*800))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_E", id, get_pcvar_num(cvar_infammo) > 0 ? get_pcvar_num(cvar_infammo) > 1 ? "MOTD_AMMO_CLIP" : "MOTD_AMMO_BP" : "MOTD_LIMITED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_F", get_pcvar_num(cvar_ammodamage))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_G", id, get_pcvar_num(cvar_firegrenades) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_H", id, get_pcvar_num(cvar_frostgrenades) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_I", id, get_pcvar_num(cvar_flaregrenades) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO2_J", id, get_pcvar_num(cvar_knockback) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			
			show_motd(id, motd)
		}
		case 2: // Zombies
		{
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_A", g_zclass_hp[0])
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_B", floatround(g_zclass_hp[0]*get_pcvar_float(cvar_zombiefirsthp)))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_C", floatround(get_pcvar_float(cvar_zombiearmor)*100))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_D", g_zclass_spd[0])
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_E", floatround(g_zclass_grav[0]*800))
			if (get_pcvar_num(cvar_zombiebonushp)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_F", get_pcvar_num(cvar_zombiebonushp))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_G", id, get_pcvar_num(cvar_zombiepainfree) > 0 ? get_pcvar_num(cvar_zombiepainfree) > 1 ? "MOTD_LASTZOMBIE" : "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_H", id, get_pcvar_num(cvar_zombiebleeding) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO3_I", get_pcvar_num(cvar_ammoinfect))
			
			show_motd(id, motd)
		}
		case 3: // Gameplay Modes
		{
			static nemhp[5], survhp[5]
			
			// Get nemesis and survivor health
			num_to_str(get_pcvar_num(cvar_nemhp), nemhp, sizeof nemhp - 1)
			num_to_str(get_pcvar_num(cvar_survhp), survhp, sizeof survhp - 1)
			
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_A", id, get_pcvar_num(cvar_nem) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			if (get_pcvar_num(cvar_nem)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_B", get_pcvar_num(cvar_nemchance))
			if (get_pcvar_num(cvar_nem)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_C", get_pcvar_num(cvar_nemhp) > 0 ? nemhp : "[Auto]")
			if (get_pcvar_num(cvar_nem)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_D", get_pcvar_num(cvar_nemspd))
			if (get_pcvar_num(cvar_nem)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_E", floatround(get_pcvar_float(cvar_nemgravity)*800))
			if (get_pcvar_num(cvar_nem)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_F", id, get_pcvar_num(cvar_leapnemesis) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			if (get_pcvar_num(cvar_nem)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_G", id, get_pcvar_num(cvar_nempainfree) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_H", id, get_pcvar_num(cvar_surv) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			if (get_pcvar_num(cvar_surv)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_I", get_pcvar_num(cvar_survchance))
			if (get_pcvar_num(cvar_surv)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_J", get_pcvar_num(cvar_survhp) > 0 ? survhp : "[Auto]")
			if (get_pcvar_num(cvar_surv)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_K", get_pcvar_num(cvar_survspd))
			if (get_pcvar_num(cvar_surv)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_L", floatround(get_pcvar_float(cvar_survgravity)*800))
			if (get_pcvar_num(cvar_surv)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_M", id, get_pcvar_num(cvar_leapsurvivor) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			if (get_pcvar_num(cvar_surv)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_N", id, get_pcvar_num(cvar_survpainfree) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_O", id, get_pcvar_num(cvar_swarm) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			if (get_pcvar_num(cvar_swarm)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_P", get_pcvar_num(cvar_swarmchance))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_Q", id, get_pcvar_num(cvar_multi) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			if (get_pcvar_num(cvar_multi)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_R", get_pcvar_num(cvar_multichance))
			if (get_pcvar_num(cvar_multi)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_S", floatround(get_pcvar_float(cvar_multiratio)*100))
			len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_T", id, get_pcvar_num(cvar_plague) ? "MOTD_ENABLED" : "MOTD_DISABLED")
			if (get_pcvar_num(cvar_plague)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_U", get_pcvar_num(cvar_plaguechance))
			if (get_pcvar_num(cvar_plague)) len += formatex(motd[len], sizeof motd - 1 - len, "%L", id, "MOTD_INFO4_V", floatround(get_pcvar_float(cvar_plagueratio)*100))
			
			show_motd(id, motd)
		}
		default: return PLUGIN_HANDLED;
	}
	
	// Show help menu again if user wishes to read another topic
	set_task(0.2, "show_menu_info", id);
	
	return PLUGIN_HANDLED;
}

// Admin Menu
public menu_admin(id, key)
{
	switch (key)
	{
		case 0: // Zombiefy/Humanize command
		{
			if (g_endround || g_swarmround || g_nemround || g_survround || g_plagueround || task_exists(TASK_WELCOMEMSG))
			{
				// Not available
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
				show_menu_admin(id)
			}
			else
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
		}
		case 1: // Nemesis command
		{
			if (g_endround || !g_newround || !get_pcvar_num(cvar_nem) || task_exists(TASK_WELCOMEMSG))
			{
				// Not available
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
				show_menu_admin(id)
			}
			else
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
		}
		case 2: // Survivor command
		{
			if (g_endround || !g_newround || !get_pcvar_num(cvar_surv) || task_exists(TASK_WELCOMEMSG))
			{
				// Not available
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
				show_menu_admin(id)
			}
			else
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
		}
		case 3: // Respawn command
		{
			if (g_endround || g_survround || g_swarmround || g_nemround || g_plagueround)
			{
				// Not available
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
				show_menu_admin(id)
			}
			else
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
		}
		case 4: // Swarm Mode command
		{
			if (allowed_swarm())
				command_swarm(id)
			else
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
			
			show_menu_admin(id)
		}
		case 5: // Multiple Infection command
		{
			if (allowed_multi())
				command_multi(id)
			else
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
			
			show_menu_admin(id)
		}
		case 6: // Plague Mode command
		{
			if (allowed_plague())
				command_plague(id)
			else
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
			
			show_menu_admin(id)
		}
	}
	
	return PLUGIN_HANDLED;
}

// Player List Menu
public menu_player_list(id, key)
{
	switch (key)
	{
		case MENU_KEY_BACK: // back
		{
			if (PL_STARTID-7 >= 0) PL_STARTID -= 7
		}
		case MENU_KEY_NEXT: // next
		{
			if (PL_STARTID+7 < g_maxplayers) PL_STARTID += 7
		}
		case MENU_KEY_EXIT: // go back to admin menu
		{
			show_menu_admin(id);
			return PLUGIN_HANDLED
		}
		default: // perform action on player
		{
			// Make sure it's connected
			if (is_user_connected(PL_SELECTION))
			{
				// Perform the right action if allowed
				switch (PL_ACTION)
				{
					case 0:
					{
						if (g_zombie[PL_SELECTION])
						{
							if (allowed_human(PL_SELECTION))
								command_human(id, PL_SELECTION)
							else
								zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
						}
						else
						{
							if (allowed_zombie(PL_SELECTION))
								command_zombie(id, PL_SELECTION)
							else
								zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
						}
					}
					case 1:
					{
						if (allowed_nemesis(PL_SELECTION))
							command_nemesis(id, PL_SELECTION)
						else
							zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
					}
					case 2:
					{
						if (allowed_survivor(PL_SELECTION))
							command_survivor(id, PL_SELECTION)
						else
							zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
					}
					case 3:
					{
						if (allowed_respawn(PL_SELECTION))
							command_respawn(id, PL_SELECTION)
						else
							zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
					}		
				}
			}
			else
			{
				zp_colored_print(id, "^x04[ZP]^x01 %L", id, "CMD_NOT")
			}
		}
	}
	
	show_menu_player_list(id)
	return PLUGIN_HANDLED;
}

/*================================================================================
 [Admin Commands]
=================================================================================*/

// zp_toggle [1/0]
public cmd_toggle(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 2))
		return PLUGIN_HANDLED;
	
	// Retrieve arguments
	new arg[2]
	read_argv(1, arg, sizeof arg - 1)
	
	// Mod already enabled/disabled
	if (str_to_num(arg) == get_pcvar_num(cvar_toggle))
		return PLUGIN_HANDLED;
	
	// Set the toggle cvar
	set_pcvar_num(cvar_toggle, str_to_num(arg))
	
	// Retrieve map name
	new mapname[32]
	get_mapname(mapname, sizeof mapname - 1)
	
	// Restart current map	
	server_cmd("changelevel %s", mapname)
	
	return PLUGIN_HANDLED;
}

// zp_zombie [target]
public cmd_zombie(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 2))
		return PLUGIN_HANDLED;
	
	// Retrieve arguments
	static arg[32], player
	read_argv(1, arg, sizeof arg - 1)
	player = cmd_target(id, arg, CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF)
	
	// Invalid target
	if (!player) return PLUGIN_HANDLED;
	
	// Target not allowed to be zombie
	if (!allowed_zombie(player))
	{
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED
	}
	
	command_zombie(id, player)
	
	return PLUGIN_HANDLED;
}

// zp_human [target]
public cmd_human(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 2))
		return PLUGIN_HANDLED;
	
	// Retrieve arguments
	static arg[32], player
	read_argv(1, arg, sizeof arg - 1)
	player = cmd_target(id, arg, CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF)
	
	// Invalid target
	if (!player) return PLUGIN_HANDLED;
	
	// Target not allowed to be human
	if (!allowed_human(player))
	{
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	
	command_human(id, player)
	
	return PLUGIN_HANDLED;
}

// zp_survivor [target]
public cmd_survivor(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 2))
		return PLUGIN_HANDLED;
	
	// Retrieve arguments
	static arg[32], player
	read_argv(1, arg, sizeof arg - 1)
	player = cmd_target(id, arg, CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF)
	
	// Invalid target
	if (!player) return PLUGIN_HANDLED;
	
	// Target not allowed to be survivor
	if (!allowed_survivor(player))
	{
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	
	command_survivor(id, player)
	
	return PLUGIN_HANDLED;
}

// zp_nemesis [target]
public cmd_nemesis(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 2))
		return PLUGIN_HANDLED;
	
	// Retrieve arguments
	static arg[32], player
	read_argv(1, arg, sizeof arg - 1)
	player = cmd_target(id, arg, CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF)
	
	// Invalid target
	if (!player) return PLUGIN_HANDLED;
	
	// Target not allowed to be nemesis
	if (!allowed_nemesis(player))
	{
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	
	command_nemesis(id, player)
	
	return PLUGIN_HANDLED;
}

// zp_respawn [target]
public cmd_respawn(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 2))
		return PLUGIN_HANDLED;
	
	// Retrieve arguments
	static arg[32], player
	read_argv(1, arg, sizeof arg - 1)
	player = cmd_target(id, arg, CMDTARGET_ALLOW_SELF)
	
	// Invalid target
	if (!player) return PLUGIN_HANDLED;
	
	// Target not allowed to be respawned
	if (!allowed_respawn(player))
	{
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	
	command_respawn(id, player)
	
	return PLUGIN_HANDLED;
}

// zp_swarm
public cmd_swarm(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 1))
		return PLUGIN_HANDLED;
	
	// Swarm mode not allowed
	if (!allowed_swarm())
	{
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	
	command_swarm(id)
	
	return PLUGIN_HANDLED;
}

// zp_multi
public cmd_multi(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 1))
		return PLUGIN_HANDLED;
	
	// Multi infection mode not allowed
	if (!allowed_multi())
	{
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	
	command_multi(id)
	
	return PLUGIN_HANDLED;
}

// zp_plague
public cmd_plague(id, level, cid)
{
	// Check for access flag
	if (!cmd_access(id, level, cid, 1))
		return PLUGIN_HANDLED;
	
	// Plague mode not allowed
	if (!allowed_plague())
	{
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	
	command_plague(id)
	
	return PLUGIN_HANDLED;
}

/*================================================================================
 [Message Hooks]
=================================================================================*/

// Current Weapon
public message_cur_weapon(msg_id, msg_dest, msg_entity)
{
	// Player not alive or not an active weapon
	if (!is_user_alive(msg_entity) || get_msg_arg_int(1) != 1)
		return;
	
	// Get weapon id and clip
	static weapon, clip
	weapon = get_msg_arg_int(2)
	clip = get_msg_arg_int(3)
	
	// Store weapon id for reference
	g_currentweapon[msg_entity] = weapon
	
	// Retrieve our custom bpammo from the weapon entity
	static wname[32], weapon_ent, extra_ammo
	get_weaponname(weapon, wname, sizeof wname - 1)
	weapon_ent = fm_find_ent_by_owner(-1, wname, msg_entity)
	extra_ammo = pev(weapon_ent, PEV_ADDITIONAL_AMMO)
	
	// Spare ammo goes to our bpammo (dont exceed max capacity though)
	if (extra_ammo)
	{
		fm_set_user_bpammo(msg_entity, weapon, min(fm_get_user_bpammo(msg_entity, weapon)+extra_ammo, MAXBPAMMO[weapon]))
		set_pev(weapon_ent, PEV_ADDITIONAL_AMMO, 0)
	}
	
	// Get unlimited ammo setting
	static infammo
	infammo = get_pcvar_num(cvar_infammo)
	
	// Unlimited BPAmmo?
	if ((infammo && MAXBPAMMO[weapon] > 2) || (g_survivor[msg_entity] && weapon == CSW_M249))
	{
		if (fm_get_user_bpammo(msg_entity, weapon) < MAXBPAMMO[weapon])
			fm_set_user_bpammo(msg_entity, weapon, MAXBPAMMO[weapon])
	}
	
	// Unlimited Clip Ammo?
	if ((infammo > 1 && MAXCLIP[weapon] > 0) || (g_survivor[msg_entity] && weapon == CSW_M249))
	{
		// HUD should show full clip all the time
		set_msg_arg_int(3, get_msg_argtype(3), MAXCLIP[weapon])
		
		// Refill when clip is nearly empty
		if (clip < 3) fm_set_weapon_ammo(weapon_ent, MAXCLIP[weapon])
	}
	
	// Bots automatically buy ammo when needed
	if (!g_zombie[msg_entity] && !g_survivor[msg_entity] && g_ammopacks[msg_entity] > 0 && MAXBPAMMO[weapon] > 2 && is_user_bot(msg_entity) && fm_get_user_bpammo(msg_entity, weapon) <= BUYAMMO[weapon])
		clcmd_buyammo(msg_entity);
	
	// Zombie not holding an allowed weapon for some reason
	if (g_zombie[msg_entity] && !((1<<weapon) & ZOMBIE_ALLOWED_WEAPONS_BITSUM))
	{
		// Force him to switch to the knife
		engclient_cmd(msg_entity, "weapon_knife")
		g_currentweapon[msg_entity] = CSW_KNIFE
		
		// Update player's HUD
		set_msg_arg_int(2, get_msg_argtype(2), CSW_KNIFE)
		set_msg_arg_int(3, get_msg_argtype(3), MAXCLIP[CSW_KNIFE])
	}
	
	// Replace custom weapon models
	replace_models(msg_entity)
}

// Take off player's money
public message_money(msg_id, msg_dest, msg_entity)
{
	// Remove money setting enabled?
	if (!get_pcvar_num(cvar_removemoney))
		return PLUGIN_CONTINUE;
	
	set_pdata_int(msg_entity, OFFSET_CSMONEY, 0, OFFSET_LINUX);
	return PLUGIN_HANDLED;
}

// Fix for the HL engine bug when HP is multiples of 256
public message_health(msg_id, msg_dest, msg_entity)
{
	// Get player's health
	static health
	health = get_msg_arg_int(1)
	
	// Don't bother
	if (health < 256) return;
	
	// Check if we need to fix it
	if (health % 256 == 0)
		fm_set_user_health(msg_entity, pev(msg_entity, pev_health)+1)
	
	// HUD can only show as much as 255 hp
	set_msg_arg_int(1, get_msg_argtype(1), 255)
}

// Block flashlight battery messages when it's not available, or if custom flashlight is enabled instead
public message_flashbat(msg_id, msg_dest, msg_entity)
{
	if (g_zombie[msg_entity] || g_survivor[msg_entity] || get_pcvar_num(cvar_cflash) || !is_user_alive(msg_entity))
		return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

// Flashbangs should only affect zombies
public message_screenfade(msg_id, msg_dest, msg_entity)
{
	if (get_msg_arg_int(4) != 255 || get_msg_arg_int(5) != 255 || get_msg_arg_int(6) != 255 || get_msg_arg_int(7) < 200)
		return PLUGIN_CONTINUE;
	
	// Nemesis shouldn't be FBed
	if (g_zombie[msg_entity] && !g_nemesis[msg_entity])
	{
		// Set flash color to nighvision's
		set_msg_arg_int(4, get_msg_argtype(4), get_pcvar_num(cvar_nvgcolor[0]))
		set_msg_arg_int(5, get_msg_argtype(5), get_pcvar_num(cvar_nvgcolor[1]))
		set_msg_arg_int(6, get_msg_argtype(6), get_pcvar_num(cvar_nvgcolor[2]))
		return PLUGIN_CONTINUE;
	}
	
	return PLUGIN_HANDLED;
}

#if defined HANDLE_MODELS_ON_SEPARATE_ENT
// Set correct model on player corpses
public message_clcorpse()
{
	set_msg_arg_string(1, g_playermodel[get_msg_arg_int(12)])
}
#endif

// Prevent zombies from seeing any weapon pickup icon
public message_weappickup(msg_id, msg_dest, msg_entity)
{
	if (g_zombie[msg_entity])
		return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

// Prevent zombies from seeing any ammo pickup icon
public message_ammopickup(msg_id, msg_dest, msg_entity)
{
	if (g_zombie[msg_entity])
		return PLUGIN_HANDLED;

	return PLUGIN_CONTINUE;
}

// Block hostage HUD display
public message_scenario()
{
	if (get_msg_args() > 1)
	{
		static sprite[8]
		get_msg_arg_string(2, sprite, sizeof sprite - 1)
		
		if (equal(sprite, "hostage"))
			return PLUGIN_HANDLED;
	}
	
	return PLUGIN_CONTINUE;
}

// Block hostages from appearing on radar
public message_hostagepos()
{
	return PLUGIN_HANDLED;
}

// Block some text messages
public message_textmsg()
{
	static textmsg[22]
	get_msg_arg_string(2, textmsg, sizeof textmsg - 1);
	
	// Game restarting, reset scores and call round end to balance the teams
	if (equal(textmsg, "#Game_will_restart_in"))
	{
		g_scorehumans = 0
		g_scorezombies = 0
		logevent_round_end()
	}
	// Block round end related messages
	else if (equal(textmsg, "#Hostages_Not_Rescued") || equal(textmsg, "#Round_Draw") || equal(textmsg, "#Terrorists_Win") || equal(textmsg, "#CTs_Win"))
	{
		return PLUGIN_HANDLED;
	}
	
	return PLUGIN_CONTINUE;
}

// Block CS round win audio messages, since we're playing our own instead
public message_sendaudio()
{
	static audio[17]
	get_msg_arg_string(2, audio, sizeof audio - 1)
	
	if(equal(audio[7], "terwin") || equal(audio[7], "ctwin") || equal(audio[7], "rounddraw"))
		return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

// Send actual team scores (T = zombies // CT = humans)
public message_teamscore()
{
	static team[2]
	get_msg_arg_string(1, team, sizeof team - 1)
	
	switch (team[0])
	{
		// CT
		case 'C': set_msg_arg_int(2, get_msg_argtype(2), g_scorehumans)
		// Terrorist
		case 'T': set_msg_arg_int(2, get_msg_argtype(2), g_scorezombies)
	}
}

// Team Switch (or player joining a team for first time)
public message_teaminfo(msg_id, msg_dest)
{
	// Only hook global messages
	if (msg_dest != MSG_ALL && msg_dest != MSG_BROADCAST) return;
	
	// Get player id
	static id
	id = get_msg_arg_int(1)
	
	// Don't pick up our own TeamInfo messages for this player (bugfix)
	if (g_switchingteam[id]) return;
	
	// Enable spectators' nightvision if not spawning right away
	set_task(0.2, "spec_nvision", id)
	
	// Round didn't start yet, nothing to worry about
	if (g_newround) return;
	
	// Get his new team
	static team[2]
	get_msg_arg_string(2, team, sizeof team - 1)
	
	switch (team[0])
	{
		case 'C': // CT
		{
			if (g_survround && fnGetHumans()) // survivor alive --> switch to T and spawn as zombie
			{
				g_respawn_as_zombie[id] = true;
				remove_task(id+TASK_TEAM)
				fm_set_user_team(id, CS_TEAM_T)
				set_msg_arg_string(2, "TERRORIST")
			}
			else if (!fnGetZombies()) // no zombies alive --> switch to T and spawn as zombie
			{
				g_respawn_as_zombie[id] = true;
				remove_task(id+TASK_TEAM)
				fm_set_user_team(id, CS_TEAM_T)
				set_msg_arg_string(2, "TERRORIST")
			}
		}
		case 'T': // Terrorist
		{
			if ((g_swarmround || g_survround) && fnGetHumans()) // survivor alive or swarm round w/ humans --> spawn as zombie
			{
				g_respawn_as_zombie[id] = true;
			}
			else if (fnGetZombies()) // zombies alive --> switch to CT
			{
				remove_task(id+TASK_TEAM)
				fm_set_user_team(id, CS_TEAM_CT)
				set_msg_arg_string(2, "CT")
			}
		}
	}
}

/*================================================================================
 [Main Functions]
=================================================================================*/

// Make Zombie Task
public make_zombie_task()
{
	// Call make a zombie with no specific mode
	make_a_zombie(MODE_NONE, 0)
}

// Make a Zombie Function
make_a_zombie(mode, id)
{
	// Get alive players count
	static iPlayersnum
	iPlayersnum = fnGetAlive()
	
	// Not enough players, come back later!
	if (iPlayersnum < 1)
	{
		set_task(10.0, "make_zombie_task", TASK_MAKEZOMBIE)
		return;
	}
	
	#if defined AMBIENCE_SOUNDS
	// Stop ambience sounds and start 'em again
	remove_task(TASK_AMBIENCESOUNDSSTOP)
	ambience_sound_stop()
	remove_task(TASK_AMBIENCESOUNDS)
	set_task(0.5, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
	#endif
	
	g_models_i = 0.0 // reset model change counter
	g_teams_i = 0.0 // reset teams change counter
	
	// Get prevent consecutive modes setting
	static preventconsecutive
	preventconsecutive = get_pcvar_num(cvar_preventconsecutive)
	
	// Round starting
	g_newround = false
	g_survround = false
	g_nemround = false
	g_swarmround = false
	g_plagueround = false
	
	// Set up some common vars
	static forward_id, name[32], iZombies, iMaxZombies
	
	if ((mode == MODE_NONE && (!preventconsecutive || g_lastmode != MODE_SURVIVOR) && random_num(1, get_pcvar_num(cvar_survchance)) == get_pcvar_num(cvar_surv) && iPlayersnum >= get_pcvar_num(cvar_survminplayers)) || mode == MODE_SURVIVOR)
	{
		// Survivor Mode
		g_survround = true
		g_lastmode = MODE_SURVIVOR
		
		// Choose player randomly?
		if (mode == MODE_NONE)
			id = fnGetRandomAlive(random_num(1, iPlayersnum))		
		
		// Remember id for calling our forward later
		forward_id = id
		
		// Turn player into a survivor
		humanme(id, 1)
		
		// Turn the rest of players into zombies
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!is_user_alive(id))
				continue;
			
			// Survivor or already a zombie
			if (g_survivor[id] || g_zombie[id])
				continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1)
		}
		
		// Play survivor sound
		PlaySound(sound_survivor[random_num(0, sizeof sound_survivor -1)]);
		
		// Get player's name
		get_user_name(forward_id, name, sizeof name - 1)
		
		// Show Survivor HUD notice
		set_hudmessage(20, 20, 255, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_SURVIVOR", name)
		
		// Round start forward
		ExecuteForward(g_fwRoundStart, g_fwDummyResult, MODE_SURVIVOR, forward_id);
	}
	else if ((mode == MODE_NONE && (!preventconsecutive || g_lastmode != MODE_SWARM) && random_num(1, get_pcvar_num(cvar_swarmchance)) == get_pcvar_num(cvar_swarm) && iPlayersnum >= get_pcvar_num(cvar_swarmminplayers)) || mode == MODE_SWARM)
	{		
		// Swarm Mode
		g_swarmround = true
		g_lastmode = MODE_SWARM
		
		// Turn every T into a zombie
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!is_user_alive(id))
				continue;
			
			// Not a Terrorist
			if (fm_get_user_team(id) != CS_TEAM_T)
				continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1)
		}
		
		// Play swarm sound
		PlaySound(sound_swarm[random_num(0, sizeof sound_swarm -1)]);
		
		// Show Swarm HUD notice
		set_hudmessage(20, 255, 20, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_SWARM")
		
		// Round start forward
		ExecuteForward(g_fwRoundStart, g_fwDummyResult, MODE_SWARM, 0);
	}
	else if ((mode == MODE_NONE && (!preventconsecutive || g_lastmode != MODE_MULTI) && random_num(1, get_pcvar_num(cvar_multichance)) == get_pcvar_num(cvar_multi) && floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil) >= 2 && iPlayersnum >= get_pcvar_num(cvar_multiminplayers)) || mode == MODE_MULTI)
	{
		// Multi Infection Mode
		g_lastmode = MODE_MULTI
		
		// iMaxZombies is rounded up, in case there aren't enough players
		iMaxZombies = floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil)
		iZombies = 0
		
		// Randomly turn iMaxZombies players into zombies
		while (iZombies < iMaxZombies)
		{
			// Keep looping through all players
			if (id++ > g_maxplayers) id = 1
			
			// Dead or already a zombie
			if (!is_user_alive(id) || g_zombie[id])
				continue;
			
			// Random chance
			if (random_num(0, 1))
			{
				// Turn into a zombie
				zombieme(id, 0, 0, 1)
				iZombies++
			}
		}
		
		// Turn the rest of players into humans
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Only those of them who aren't zombies
			if (!is_user_alive(id) || g_zombie[id])
				continue
			
			// Remove previous tasks
			remove_task(id+TASK_TEAM)
			
			// Switch to CT
			if (fm_get_user_team(id) != CS_TEAM_CT) // need to change team?
			{
				fm_set_user_team(id, CS_TEAM_CT)
				set_task(0.1+g_teams_i, "fm_set_user_team_msg", id+TASK_TEAM)
				g_teams_i += 0.1; // increase teams task counter
			}
		}
		
		// Play multi infection sound
		PlaySound(sound_multi[random_num(0, sizeof sound_multi -1)]);
		
		// Show Multi Infection HUD notice
		set_hudmessage(200, 50, 0, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_MULTI")
		
		// Round start forward
		ExecuteForward(g_fwRoundStart, g_fwDummyResult, MODE_MULTI, 0);
	}
	else if ((mode == MODE_NONE && (!preventconsecutive || g_lastmode != MODE_PLAGUE) && random_num(1, get_pcvar_num(cvar_plaguechance)) == get_pcvar_num(cvar_plague) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_plagueratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_plagueminplayers)) || mode == MODE_PLAGUE)
	{
		// Plague Mode
		g_plagueround = true
		g_lastmode = MODE_PLAGUE
		
		// Turn someone into a Survivor
		id = fnGetRandomAlive(random_num(1, iPlayersnum))
		humanme(id, 1)
		
		// Turn someone into a Nemesis (not the survivor!)
		while (g_survivor[id]) id = fnGetRandomAlive(random_num(1, iPlayersnum));
		zombieme(id, 0, 1, 0)
		
		// iMaxZombies is rounded up, in case there aren't enough players
		iMaxZombies = floatround((iPlayersnum-2)*get_pcvar_float(cvar_plagueratio), floatround_ceil)
		iZombies = 0
		
		// Randomly turn iMaxZombies players into zombies
		while (iZombies < iMaxZombies)
		{
			// Keep looping through all players
			if (id++ > g_maxplayers) id = 1
			
			// Dead or already a zombie or survivor
			if (!is_user_alive(id) || g_zombie[id] || g_survivor[id])
				continue;
			
			// Random chance
			if (random_num(0, 1))
			{
				// Turn into a zombie
				zombieme(id, 0, 0, 1)
				iZombies++
			}
		}
		
		// Turn the rest of players into humans
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Only those of them who arent zombies or survivor
			if (!is_user_alive(id) || g_zombie[id] || g_survivor[id])
				continue
			
			// Remove previous tasks
			remove_task(id+TASK_TEAM)
			
			// Switch to CT
			if (fm_get_user_team(id) != CS_TEAM_CT) // need to change team?
			{
				fm_set_user_team(id, CS_TEAM_CT)
				set_task(0.1+g_teams_i, "fm_set_user_team_msg", id+TASK_TEAM)
				g_teams_i += 0.1; // increase teams task counter
			}
		}
		
		// Play plague sound
		PlaySound(sound_plague[random_num(0, sizeof sound_plague -1)]);
		
		// Show Plague HUD notice
		set_hudmessage(0, 50, 200, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_PLAGUE")
		
		// Round start forward
		ExecuteForward(g_fwRoundStart, g_fwDummyResult, MODE_PLAGUE, 0);
	}
	else
	{
		// Single Infection Mode or Nemesis Mode
		
		// Choose player randomly?
		if (mode == MODE_NONE)
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
		// Remember id for calling our forward later
		forward_id = id
		
		if ((mode == MODE_NONE && (!preventconsecutive || g_lastmode != MODE_NEMESIS) && random_num(1, get_pcvar_num(cvar_nemchance)) == get_pcvar_num(cvar_nem) && iPlayersnum >= get_pcvar_num(cvar_nemminplayers)) || mode == MODE_NEMESIS)
		{
			// Nemesis Mode
			g_nemround = true
			g_lastmode = MODE_NEMESIS
			
			// Turn player into nemesis
			zombieme(id, 0, 1, 0)
		}
		else
		{
			// Single Infection Mode
			g_lastmode = MODE_INFECTION
			
			// Turn player into the first zombie
			zombieme(id, 0, 0, 0)
		}
		
		// Rest of players should be humans (CTs)
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!is_user_alive(id))
				continue;
			
			// First zombie/nemesis
			if (g_zombie[id])
				continue;
			
			// Remove previous tasks
			remove_task(id+TASK_TEAM)
			
			// Switch to CT
			if (fm_get_user_team(id) != CS_TEAM_CT) // need to change team?
			{
				fm_set_user_team(id, CS_TEAM_CT)
				set_task(0.1+g_teams_i, "fm_set_user_team_msg", id+TASK_TEAM)
				g_teams_i += 0.1; // increase teams task counter
			}
		}
		
		if (g_nemround)
		{
			// Play Nemesis sound
			PlaySound(sound_nemesis[random_num(0, sizeof sound_nemesis -1)]);
			
			// Get player's name
			get_user_name(forward_id, name, sizeof name - 1)
			
			// Show Nemesis HUD notice
			set_hudmessage(255, 20, 20, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
			ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_NEMESIS", name)
			
			// Round start forward
			ExecuteForward(g_fwRoundStart, g_fwDummyResult, MODE_NEMESIS, forward_id);
		}
		else
		{
			// Get player's name
			get_user_name(forward_id, name, sizeof name - 1)
			
			// Show First Zombie HUD notice
			set_hudmessage(255, 0, 0, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 5.0, 1.0, 1.0, -1)
			ShowSyncHudMsg(0, g_MsgSync, "%L",LANG_PLAYER, "NOTICE_FIRST", name)
			
			// Round start forward
			ExecuteForward(g_fwRoundStart, g_fwDummyResult, MODE_INFECTION, forward_id);
		}
	}
	
	// Last Zombie Check
	set_task(0.1, "fnCheckLastZombie")
}

// Zombie Me Function (player id, infector, turn into a nemesis, special mode)
zombieme(id, infector, nemesis, specialmode)
{
	// Pre user infect forward
	ExecuteForward(g_fwUserInfected_pre, g_fwDummyResult, id, infector)
	
	// Show zombie class menu if they haven't chosen any (e.g. just connected)
	if (g_zombieclass[id] == ZCLASS_NONE && get_pcvar_num(cvar_zclasses))
		set_task(2.0, "show_menu_zclass", id)
	
	// Set selected zombie class
	g_zombieclass[id] = g_zombieclassnext[id]
	
	// Way to go...
	g_zombie[id] = true
	g_survivor[id] = false
	
	// Set zombie attributes based on the mode
	if (!specialmode)
	{
		if (nemesis)
		{
			// Nemesis
			g_nemesis[id] = true
			
			// Get nemesis health setting
			static nemhealth
			nemhealth = get_pcvar_num(cvar_nemhp)
			
			// Set health [0 = auto]
			if (!nemhealth)
				fm_set_user_health(id, g_zclass_hp[0]*(fnGetHumans()+1))
			else
				fm_set_user_health(id, nemhealth)
			
			// Set gravity
			set_pev(id, pev_gravity, get_pcvar_float(cvar_nemgravity))
		}
		else if (fnGetZombies() == 1)
		{
			// First zombie
			g_firstzombie[id] = true
			
			// Set health and gravity
			fm_set_user_health(id, floatround(g_zclass_hp[g_zombieclass[id]]*get_pcvar_float(cvar_zombiefirsthp)))
			set_pev(id, pev_gravity, g_zclass_grav[g_zombieclass[id]])
			
			// Infection sound
			engfunc(EngFunc_EmitSound, id, CHAN_VOICE, zombie_infect[random_num(0, sizeof zombie_infect - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
		}
		else
		{
			// Infected by someone
			
			// Set health and gravity
			fm_set_user_health(id, g_zclass_hp[g_zombieclass[id]])
			set_pev(id, pev_gravity, g_zclass_grav[g_zombieclass[id]])
			
			// Infection sound
			engfunc(EngFunc_EmitSound, id, CHAN_VOICE, zombie_infect[random_num(0, sizeof zombie_infect - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
			
			// Get player's name
			static name[32]
			get_user_name(id, name, sizeof name - 1)
			
			// Show Infection HUD notice
			set_hudmessage(255, 0, 0, HUD_INFECT_X, HUD_INFECT_Y, 0, 0.0, 5.0, 1.0, 1.0, -1)
			
			if (infector) // infected by someone?
			{
				static name2[32]
				get_user_name(infector, name2, sizeof name2 - 1)
				ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_INFECT2", name, name2)
			}
			else ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_INFECT", name)
		}
	}
	else
	{
		// Survivor/multi infection/swarm/plague/infection grenade
		
		// Set health and gravity
		fm_set_user_health(id, g_zclass_hp[g_zombieclass[id]])
		set_pev(id, pev_gravity, g_zclass_grav[g_zombieclass[id]])
	}
	
	// Remove previous tasks
	remove_task(id+TASK_TEAM)
	remove_task(id+TASK_MODEL)
	remove_task(id+TASK_BLOOD)
	
	// Switch to T
	if (fm_get_user_team(id) != CS_TEAM_T) // need to change team?
	{
		fm_set_user_team(id, CS_TEAM_T)
		
		// Set a longer delay for survivor/multi infection/swarm/plague/infection grenade
		if (specialmode)
		{
			set_task(0.1+g_teams_i, "fm_set_user_team_msg", id+TASK_TEAM)
			g_teams_i += 0.1; // increase teams task counter
		}
		else
		{
			set_task(0.1, "fm_set_user_team_msg", id+TASK_TEAM)
		}
	}
	
	#if defined HANDLE_MODELS_ON_SEPARATE_ENT
	
	// Set the right model
	if (g_nemesis[id])
		copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_nemesis[random_num(0, sizeof model_nemesis -1)])
	else
	{
		if (get_pcvar_num(cvar_adminmodelszombie) && get_user_flags(id) & ACCESS_FLAG3)
			copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_admin_zombie[random_num(0, sizeof model_admin_zombie -1)])
		else
			copy(g_playermodel[id], sizeof g_playermodel[] - 1, g_zclass_model[g_zombieclass[id]])
	}
	
	// Set model on player model entity
	fm_set_playermodel_ent(id)
	
	// Nemesis glow / remove glow on player model entity
	if (g_nemesis[id] && get_pcvar_num(cvar_nemglow))
		fm_set_rendering(g_ent_playermodel[id], kRenderFxGlowShell, 255, 0, 0, kRenderNormal, 25)
	else
		fm_set_rendering(g_ent_playermodel[id])
	
	#else
	
	// Set the right model, after checking that we don't already have it
	static currentmodel[32], already_has_model, i, iRand
	already_has_model = false
	
	// Get current model and compare it with current one
	fm_get_user_model(id, currentmodel, sizeof currentmodel - 1)
	
	if (g_nemesis[id])
	{
		for (i = 0; i < sizeof model_nemesis; i++)
			if (equal(model_nemesis[i], currentmodel)) already_has_model = true;
		
		if (!already_has_model)
		{
			iRand = random_num(0, sizeof model_nemesis -1)
			copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_nemesis[iRand])
			#if defined SET_MODELINDEX_OFFSET
			fm_set_user_model_index(id, g_modelindex_nemesis[iRand])
			#endif
		}
	}
	else
	{
		if (get_pcvar_num(cvar_adminmodelszombie) && get_user_flags(id) & ACCESS_FLAG3)
		{
			for (i = 0; i < sizeof model_admin_zombie; i++)
				if (equal(model_admin_zombie[i], currentmodel)) already_has_model = true;
			
			if (!already_has_model)
			{
				iRand = random_num(0, sizeof model_admin_zombie -1)
				copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_admin_zombie[iRand])
				#if defined SET_MODELINDEX_OFFSET
				fm_set_user_model_index(id, g_modelindex_admin_zombie[iRand])
				#endif
			}
		}
		else
		{
			if (equal(g_zclass_model[g_zombieclass[id]], currentmodel)) already_has_model = true;		
			
			if (!already_has_model)
			{
				copy(g_playermodel[id], sizeof g_playermodel[] - 1, g_zclass_model[g_zombieclass[id]])
				#if defined SET_MODELINDEX_OFFSET
				fm_set_user_model_index(id, g_zclass_modelindex[g_zombieclass[id]])
				#endif
			}
		}
	}
	
	// Need to change the model?
	if (!already_has_model)
	{
		// Set a longer delay for survivor/multi infection/swarm/plague/infection grenade
		if (specialmode)
		{
			// Set model with a delay
			set_task(0.1+g_models_i, "fm_set_user_model", id+TASK_MODEL)
			g_models_i += MODELCHANGE_DELAY;
		}
		else
		{
			// Set model instantly
			fm_set_user_model(id+TASK_MODEL)
		}
	}
	
	// Nemesis glow / remove glow
	if (g_nemesis[id] && get_pcvar_num(cvar_nemglow))
		fm_set_rendering(id, kRenderFxGlowShell, 255, 0, 0, kRenderNormal, 25)
	else
		fm_set_rendering(id)
	
	#endif
	
	// Remove any zoom (bugfix)
	fm_remove_user_zoom(id)
	
	// Remove armor
	set_pev(id, pev_armorvalue, 0.0)
	
	// Drop weapons when infected
	drop_weapons(id, 1)
	drop_weapons(id, 2)
	
	// Strip zombies from guns and give them a knife
	fm_strip_user_weapons(id)
	fm_give_item(id, "weapon_knife")
	
	// Some fancy effects
	infectionFX1(id)
	infectionFX2(id)
	
	// Get nightvision give setting
	static nvggive
	nvggive = get_pcvar_num(cvar_nvggive)
	
	// Give Zombies Night Vision?
	if (nvggive)
	{
		if (!is_user_bot(id))
		{
			g_nvision[id] = true
			
			// Turn on Night Vision automatically?
			if (nvggive == 1)
			{
				g_nvisionenabled[id] = true
				
				// Custom nvg?
				if (get_pcvar_num(cvar_cnvg))
				{
					remove_task(id+TASK_NVISION)
					set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
				}
				else
					set_user_gnvision(id, 1)
			}
		}
		else
			fm_set_bot_nvg(id, 1); // turn on NVG for bots
	}
	
	// Get FOV setting
	static fov
	fov = get_pcvar_num(cvar_zombiefov)
	
	// Set custom FOV?
	if (fov != 90 && fov != 0)
	{
		message_begin(MSG_ONE, g_msgSetFOV, _, id)
		write_byte(fov) // angle
		message_end()
	}
	
	// Call the bloody task
	if (!g_nemesis[id] && get_pcvar_num(cvar_zombiebleeding))
		set_task(0.7, "make_blood", id+TASK_BLOOD, _, _, "b")
	
	// Idle sounds task
	if (!g_nemesis[id])
		set_task(random_float(50.0, 70.0), "zombie_play_idle", id+TASK_BLOOD, _, _, "b")
	
	// Turn off zombie's flashlight
	turn_off_flashlight(id)
	
	// Remove survivor's aura (bugfix)
	set_pev(id, pev_effects, pev(id, pev_effects) &~ EF_BRIGHTLIGHT)
	
	// Post user infect forward
	ExecuteForward(g_fwUserInfected_post, g_fwDummyResult, id, infector)
	
	// Last Zombie Check
	set_task(0.1, "fnCheckLastZombie")
}

// Function Human Me (player id, turn into a survivor)
humanme(id, survivor)
{
	// Pre user humanize forward
	ExecuteForward(g_fwUserHumanized_pre, g_fwDummyResult, id)
	
	// Reset some vars
	g_zombie[id] = false
	g_nemesis[id] = false
	g_firstzombie[id] = false
	g_nodamage[id] = false
	g_canbuy[id] = true
	g_nvision[id] = false
	g_nvisionenabled[id] = false
	
	// Set human attributes based on the mode
	if (survivor)
	{
		// Survivor
		g_survivor[id] = true
		
		// Get survivor health setting
		static survhealth
		survhealth = get_pcvar_num(cvar_survhp)
		
		// Set Health [0 = auto]
		if (!survhealth)
			fm_set_user_health(id, fnGetHumans()*get_pcvar_num(cvar_humanhp))
		else
			fm_set_user_health(id, survhealth)
		
		// Set Gravity
		set_pev(id, pev_gravity, get_pcvar_float(cvar_survgravity))
		
		// Strip survivor from weapons and give M249
		fm_strip_user_weapons(id)
		fm_give_item(id, "weapon_knife")
		fm_give_item(id, "weapon_m249")
		
		// Turn off his flashlight
		turn_off_flashlight(id)
		
		// Give the survivor a bright light
		if (get_pcvar_num(cvar_survaura)) set_pev(id, pev_effects, pev(id, pev_effects) | EF_BRIGHTLIGHT)
		
		// Survivor bots will also need nightvision to see in the dark
		if (is_user_bot(id)) fm_set_bot_nvg(id, 1);
	}
	else
	{
		// Human taking an antidote
		
		// Set health
		fm_set_user_health(id, get_pcvar_num(cvar_humanhp))
		
		// Set gravity, unless frozen
		if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_humangravity))	
		
		// Strip off from weapons
		fm_strip_user_weapons(id)
		fm_give_item(id, "weapon_knife")
		
		// Show custom buy menu?
		if (get_pcvar_num(cvar_buycustom))
			set_task(0.4, "show_menu_buy1", id+TASK_SPAWN)
		
		// Antidote sound
		engfunc(EngFunc_EmitSound, id, CHAN_ITEM, sound_antidote[random_num(0, sizeof sound_antidote - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
		
		// Get player's name
		static name[32]
		get_user_name(id, name, sizeof name - 1)
		
		// Show Antidote HUD notice
		set_hudmessage(0, 0, 255, HUD_INFECT_X, HUD_INFECT_Y, 0, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_ANTIDOTE", name)
	}	
	
	// Remove previous tasks
	remove_task(id+TASK_TEAM)
	remove_task(id+TASK_MODEL)
	remove_task(id+TASK_BLOOD)
	
	// Switch to CT
	if (fm_get_user_team(id) != CS_TEAM_CT) // need to change team?
	{
		fm_set_user_team(id, CS_TEAM_CT)
		fm_set_user_team_msg(id+TASK_TEAM)
	}
	
	#if defined HANDLE_MODELS_ON_SEPARATE_ENT
	
	// Set the right model
	if (g_survivor[id])
		copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_survivor[random_num(0, sizeof model_survivor -1)])
	else
	{
		if (get_pcvar_num(cvar_adminmodelshuman) && get_user_flags(id) & ACCESS_FLAG3)
			copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_admin[random_num(0, sizeof model_admin -1)])
		else
			copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_human[random_num(0, sizeof model_human -1)])
	}
	
	// Set model on player model entity
	fm_set_playermodel_ent(id)
	
	// Set survivor glow / remove glow, unless frozen
	if (g_survivor[id] && get_pcvar_num(cvar_survglow))
		fm_set_rendering(g_ent_playermodel[id], kRenderFxGlowShell, 0, 0, 255, kRenderNormal, 25)
	else if (!g_frozen[id])
		fm_set_rendering(g_ent_playermodel[id])
	
	#else
	
	// Set the right model, after checking that we don't already have it
	static currentmodel[32], already_has_model, i, iRand
	already_has_model = false;
	
	// Get current model and compare it with current one
	fm_get_user_model(id, currentmodel, sizeof currentmodel - 1);
	
	if (g_survivor[id])
	{
		for (i = 0; i < sizeof model_survivor; i++)
			if (equal(model_survivor[i], currentmodel)) already_has_model = true;
		
		if (!already_has_model)
		{
			iRand = random_num(0, sizeof model_survivor -1)
			copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_survivor[iRand])
			#if defined SET_MODELINDEX_OFFSET
			fm_set_user_model_index(id, g_modelindex_survivor[iRand])
			#endif
		}
	}
	else
	{
		if (get_pcvar_num(cvar_adminmodelshuman) && get_user_flags(id) & ACCESS_FLAG3)
		{
			for (i = 0; i < sizeof model_admin; i++)
				if (equal(model_admin[i], currentmodel)) already_has_model = true;
			
			if (!already_has_model)
			{
				iRand = random_num(0, sizeof model_admin -1)
				copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_admin[iRand])
				#if defined SET_MODELINDEX_OFFSET
				fm_set_user_model_index(id, g_modelindex_admin[iRand])
				#endif
			}
		}
		else
		{
			for (i = 0; i < sizeof model_human; i++)
				if (equal(model_human[i], currentmodel)) already_has_model = true;
			
			if (!already_has_model)
			{
				iRand = random_num(0, sizeof model_human -1)
				copy(g_playermodel[id], sizeof g_playermodel[] - 1, model_human[iRand])
				#if defined SET_MODELINDEX_OFFSET
				fm_set_user_model_index(id, g_modelindex_human[iRand])
				#endif
			}
		}
	}
	
	// Set model instantly
	if (!already_has_model) fm_set_user_model(id+TASK_MODEL)
	
	// Set survivor glow / remove glow, unless frozen
	if (g_survivor[id] && get_pcvar_num(cvar_survglow))
		fm_set_rendering(id, kRenderFxGlowShell, 0, 0, 255, kRenderNormal, 25)
	else if (!g_frozen[id])
		fm_set_rendering(id)
	
	#endif
	
	// Get FOV setting
	static fov
	fov = get_pcvar_num(cvar_zombiefov)
	
	// Restore FOV?
	if (fov != 90 && fov != 0)
	{
		message_begin(MSG_ONE, g_msgSetFOV, _, id)
		write_byte(90) // angle
		message_end()
	}
	
	// Disable nightvision
	if (is_user_bot(id)) fm_set_bot_nvg(id, 0)
	else if (!get_pcvar_num(cvar_cnvg)) set_user_gnvision(id, 0)
	
	// Post user humanize forward
	ExecuteForward(g_fwUserHumanized_post, g_fwDummyResult, id)
	
	// Last Zombie Check
	set_task(0.1, "fnCheckLastZombie")
}

/*================================================================================
 [Other Functions and Tasks]
=================================================================================*/

// Register Ham Forwards for CZ bots
public register_ham_czbots(id)
{
	// Make sure it's a CZ bot and it's still connected
	if (g_hamczbots || !get_pcvar_num(cvar_botquota) || !is_user_connected(id) || !is_user_bot(id))
		return;
	
	RegisterHamFromEntity(Ham_Spawn, id, "fw_PlayerSpawn_Post", 1)
	RegisterHamFromEntity(Ham_Killed, id, "fw_PlayerKilled")
	RegisterHamFromEntity(Ham_TakeDamage, id, "fw_TakeDamage")
	RegisterHamFromEntity(Ham_TraceAttack, id, "fw_TraceAttack")
	
	// Ham forwards for CZ bots succesfully registered
	g_hamczbots = true
	
	// If the bot has already spawned, call the forward manually for him
	if (is_user_alive(id)) fw_PlayerSpawn_Post(id)
}

// Bots automatically buy extra items
public bot_buy_extras(taskid)
{
	// Nemesis or Survivor shouldnt get extra items
	if (g_survivor[ID_SPAWN] || g_nemesis[ID_SPAWN] || !is_user_alive(ID_SPAWN))
		return;
	
	if (!g_zombie[ID_SPAWN]) // human bots
	{
		// Attempt to buy Night Vision
		buy_extra_item(ID_SPAWN, EXTRA_NVISION)
		
		// Attempt to buy a weapon
		buy_extra_item(ID_SPAWN, random_num(EXTRA_WEAPONS_STARTID, EXTRAS_CUSTOM_STARTID-1))
	}
	else // zombie bots
	{
		// Attempt to buy an Antidote
		buy_extra_item(ID_SPAWN, EXTRA_ANTIDOTE)
	}
}

// Balance Teams Task
public balance_teams()
{
	// Get users playing
	static iPlayersnum
	iPlayersnum = fnGetPlaying()
	
	// No players, don't bother
	if (iPlayersnum < 1) return;
	
	// Split players evenly
	static g_team[33], id, iTerrors, iMaxTerrors, team
	iMaxTerrors = iPlayersnum/2
	iTerrors = 0
	
	// First, mark everyone as CT
	for (id = 1; id <= g_maxplayers; id++)
		g_team[id] = CS_TEAM_CT
	
	// Then randomly mark half of the players as Terrorists
	while (iTerrors < iMaxTerrors)
	{
		// Keep looping through all players
		if (id++ > g_maxplayers) id = 1
		
		// Skip if not connected
		if (!is_user_connected(id))
			continue;
		
		team = fm_get_user_team(id)
		
		// Skip if not playing
		if (team == CS_TEAM_SPECTATOR || team == CS_TEAM_UNASSIGNED)
			continue;
		
		// Already a Terrorist
		if (g_team[id] == CS_TEAM_T)
			continue;
		
		// Random chance
		if (random_num(0, 1))
		{
			g_team[id] = CS_TEAM_T
			iTerrors++
		}
	}
	
	// Set everyone's team for real
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Skip if not connected
		if (!is_user_connected(id))
			continue;
		
		team = fm_get_user_team(id)
		
		// Skip if not playing
		if (team == CS_TEAM_SPECTATOR || team == CS_TEAM_UNASSIGNED)
			continue;
		
		// Set team
		remove_task(id+TASK_TEAM)
		fm_set_user_team(id, g_team[id])
	}
}

// Welcome Message Task
public welcome_msg()
{
	// Show mod info
	zp_colored_print(0, "^x01**** ^x04%s^x01 by MeRcyLeZZ ****", g_modname)
	zp_colored_print(0, "^x04[ZP]^x01 %L", LANG_PLAYER, "NOTICE_INFO1")
	if (!get_pcvar_num(cvar_infammo)) zp_colored_print(0, "^x04[ZP]^x01 %L", LANG_PLAYER, "NOTICE_INFO2")
	
	// Show T-virus HUD notice
	set_hudmessage(0, 125, 200, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 2.0, 1.0, -1)
	ShowSyncHudMsg(0, g_MsgSync, "%L", LANG_PLAYER, "NOTICE_VIRUS_FREE")
}

// Respawn Player Task
public respawn_player(taskid)
{
	// Get player's team
	static team
	team = fm_get_user_team(ID_SPAWN)
	
	// Respawn on infection rounds only
	if (!g_endround && !g_survround && !g_swarmround && !g_nemround && !g_plagueround && team != CS_TEAM_SPECTATOR && team != CS_TEAM_UNASSIGNED && !is_user_alive(ID_SPAWN))
	{
		// Set proper team before respawning, so that the TeamInfo message that's sent doesn't confuse PODBots
		if (g_respawn_as_zombie[ID_SPAWN])
			fm_set_user_team(ID_SPAWN, CS_TEAM_T)
		else
			fm_set_user_team(ID_SPAWN, CS_TEAM_CT)
		
		// Respawning a player has never been so easy
		ExecuteHamB(Ham_CS_RoundRespawn, ID_SPAWN)
	}
}

// Check Round Task -check that we still have both zombies & humans on a round-
check_round(leaving_player)
{
	// Round ended or make_a_zombie task still active
	if (g_endround || task_exists(TASK_MAKEZOMBIE))
		return;
	
	// Get alive players count
	static iPlayersnum
	iPlayersnum = fnGetAlive()
	
	// Last alive player, don't bother
	if (iPlayersnum < 2)
		return;
	
	// Set up some common vars
	static id, name[32]
	
	// Last zombie disconnecting
	if (g_zombie[leaving_player] && fnGetZombies() == 1)
	{
		// Only one CT left, don't bother
		if (fnGetHumans() == 1 && fnGetCTs() == 1)
			return;
		
		// Pick a random one to take his place
		while ((id = fnGetRandomAlive(random_num(1, iPlayersnum))) == leaving_player ) {}
		
		// Show last zombie left notice
		get_user_name(id, name, sizeof name - 1)
		zp_colored_print(0, "^x04[ZP]^x01 %L", LANG_PLAYER, "LAST_ZOMBIE_LEFT", name)
		
		// Turn into a Nemesis or just a zombie?
		if (g_nemesis[leaving_player] && !g_plagueround)
			make_a_zombie(MODE_NEMESIS, id)
		else
			zombieme(id, 0, 0, 0)
	}
	
	// Last human disconnecting
	else if (!g_zombie[leaving_player] && fnGetHumans() == 1)
	{
		// Only one T left, don't bother
		if (fnGetZombies() == 1 && fnGetTs() == 1)
			return;
		
		// Pick a random one to take his place
		while ((id = fnGetRandomAlive(random_num(1, iPlayersnum))) == leaving_player ) {}
		
		// Show last human left notice
		get_user_name(id, name, sizeof name - 1)
		zp_colored_print(0, "^x04[ZP]^x01 %L", LANG_PLAYER, "LAST_HUMAN_LEFT", name)
		
		// Turn into a Survivor or just a human?
		if (g_survivor[leaving_player] && !g_plagueround)
			make_a_zombie(MODE_SURVIVOR, id)
		else
			humanme(id, 0)
	}
}

// Lighting Effects Task
public lighting_effects()
{
	// Lighting style ["a"-"z"]
	static lights[2]
	get_pcvar_string(cvar_lighting, lights, sizeof lights - 1)
	strtolower(lights)
	
	// Lighting disabled? ["0"]
	if (lights[0] == '0')
	{
		// Task not needed anymore
		remove_task(TASK_LIGHTING)
		return;
	}
	
	// Darkest light settings?
	if (lights[0] >= 'a' && lights[0] <= 'd')
	{
		// Get thunderclaps setting
		static Float:thunderclap
		thunderclap = get_pcvar_float(cvar_thunder)
		
		// Set thunderclap tasks if neccesary
		if (thunderclap > 0.0 && !task_exists(TASK_THUNDER_PRE) && !task_exists(TASK_THUNDER))
		{
			g_lights_i = 0
			switch (random_num(0, 2))
			{
				case 0: set_task(thunderclap, "thunderclap1", TASK_THUNDER_PRE)
				case 1: set_task(thunderclap, "thunderclap2", TASK_THUNDER_PRE)
				case 2: set_task(thunderclap, "thunderclap3", TASK_THUNDER_PRE)
			}
		}
		
		// Set lighting only when no thunderclaps are going on
		if (!task_exists(TASK_THUNDER)) engfunc(EngFunc_LightStyle, 0, lights)
	}
	else
	{
		// Remove thunderclap tasks
		remove_task(TASK_THUNDER_PRE)
		remove_task(TASK_THUNDER)
		
		// Set lighting
		engfunc(EngFunc_LightStyle, 0, lights)
	}
}

// Thunderclap 1
public thunderclap1()
{
	// Play thunder sound
	if (!g_lights_i) PlaySound(sound_thunder[random_num(0, sizeof sound_thunder - 1)])
	
	// Set lighting
	engfunc(EngFunc_LightStyle, 0, lights_thunder1[g_lights_i])
	g_lights_i++
	
	// Loop the task until we reach the end of the cycle
	if (g_lights_i >= sizeof lights_thunder1)
	{
		remove_task(TASK_THUNDER)
		lighting_effects()
	}
	else if (!task_exists(TASK_THUNDER))
		set_task(0.1, "thunderclap1", TASK_THUNDER, _, _, "b")
}

// Thunderclap 2
public thunderclap2()
{
	// Play thunder sound
	if (!g_lights_i) PlaySound(sound_thunder[random_num(0, sizeof sound_thunder - 1)])
	
	// Set lighting
	engfunc(EngFunc_LightStyle, 0, lights_thunder2[g_lights_i])
	g_lights_i++
	
	// Loop the task until we reach the end of the cycle
	if (g_lights_i >= sizeof lights_thunder2)
	{
		remove_task(TASK_THUNDER)
		lighting_effects()
	}
	else if (!task_exists(TASK_THUNDER))
		set_task(0.1, "thunderclap2", TASK_THUNDER, _, _, "b")
}

// Thunderclap 3
public thunderclap3()
{
	// Play thunder sound
	if (!g_lights_i) PlaySound(sound_thunder[random_num(0, sizeof sound_thunder - 1)])
	
	// Set lighting
	engfunc(EngFunc_LightStyle, 0, lights_thunder3[g_lights_i])
	g_lights_i++
	
	// Loop the task until we reach the end of the cycle
	if (g_lights_i >= sizeof lights_thunder3)
	{
		remove_task(TASK_THUNDER)
		lighting_effects()
	}
	else if (!task_exists(TASK_THUNDER))
		set_task(0.1, "thunderclap3", TASK_THUNDER, _, _, "b")
}

#if defined AMBIENCE_SOUNDS
// Ambience Sound Effects Task
public ambience_sound_effects(taskid)
{
	// Play a random sound depending on the round
	static amb_sound[64], isound, Float:duration
	
	if (g_nemround) // Nemesis Mode
	{
		isound = random_num(0, sizeof sound_ambience2 - 1)
		copy(amb_sound, sizeof amb_sound -1, sound_ambience2[isound])
		duration = sound_ambience2_duration[isound]
	}
	else if (g_survround) // Survivor Mode
	{
		isound = random_num(0, sizeof sound_ambience3 - 1)
		copy(amb_sound, sizeof amb_sound -1, sound_ambience3[isound])
		duration = sound_ambience3_duration[isound]
	}
	else if (g_swarmround) // Swarm Mode
	{
		isound = random_num(0, sizeof sound_ambience4 - 1)
		copy(amb_sound, sizeof amb_sound -1, sound_ambience4[isound])
		duration = sound_ambience4_duration[isound]
	}
	else if (g_plagueround) // Plague Mode
	{
		isound = random_num(0, sizeof sound_ambience5 - 1)
		copy(amb_sound, sizeof amb_sound -1, sound_ambience5[isound])
		duration = sound_ambience5_duration[isound]
	}
	else // Infection Mode
	{
		isound = random_num(0, sizeof sound_ambience1 - 1)
		copy(amb_sound, sizeof amb_sound -1, sound_ambience1[isound])
		duration = sound_ambience1_duration[isound]
	}
	
	// Check whether it's a wav or mp3 and play it on clients
	if (equal(amb_sound[strlen(amb_sound)-4], ".mp3"))
		client_cmd(0, "mp3 play ^"sound/%s^"", amb_sound)
	else
		PlaySound(amb_sound)
	
	// The task should be called again after the sound is done playing
	set_task(duration, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
}

// Ambience Sounds Stop Task
public ambience_sound_stop()
{
	client_cmd(0, "mp3 stop; stopsound")
}
#endif

// Flashlight Charge Task
public flashlight_charge(taskid)
{
	// Custom flashlight disabled or flashlight not available for player
	if (g_zombie[ID_CHARGE] || g_survivor[ID_CHARGE] || !get_pcvar_num(cvar_cflash) || !is_user_alive(ID_CHARGE))
	{
		// Task not needed anymore
		remove_task(taskid);
		return;
	}
	
	// Drain or charge?
	if (g_flashlight[ID_CHARGE])
		g_flashbattery[ID_CHARGE] -= get_pcvar_num(cvar_flashdrain)
	else
		g_flashbattery[ID_CHARGE] += get_pcvar_num(cvar_flashcharge)
	
	// Battery fully charged
	if (g_flashbattery[ID_CHARGE] >= 100)
	{
		// Don't exceed 100%
		g_flashbattery[ID_CHARGE] = 100;
		
		// Update flashlight battery on HUD
		message_begin(MSG_ONE_UNRELIABLE, g_msgFlashBat, _, ID_CHARGE)
		write_byte(g_flashbattery[ID_CHARGE]) // battery
		message_end()
		
		// Task not needed anymore
		remove_task(taskid);
		return;
	}
	
	// Battery depleted
	if (g_flashbattery[ID_CHARGE] <= 0)
	{
		// Turn it off
		g_flashlight[ID_CHARGE] = false;
		g_flashbattery[ID_CHARGE] = 0;
		
		// Update flashlight status on HUD
		message_begin(MSG_ONE, g_msgFlashlight, _, ID_CHARGE)
		write_byte(g_flashlight[ID_CHARGE]) // toggle
		write_byte(g_flashbattery[ID_CHARGE]) // battery
		message_end()
	}
	else
	{
		// Update flashlight battery on HUD
		message_begin(MSG_ONE_UNRELIABLE, g_msgFlashBat, _, ID_CHARGE)
		write_byte(g_flashbattery[ID_CHARGE]) // battery
		message_end()
	}
}

// Remove Spawn Protection Task
public remove_spawn_protection(taskid)
{
	// Not alive
	if (!is_user_alive(ID_SPAWN))
		return;
	
	// Remove spawn protection
	g_nodamage[ID_SPAWN] = false;
	set_pev(ID_SPAWN, pev_effects, pev(ID_SPAWN, pev_effects) & ~EF_NODRAW)
}

// Task Hide Player's Money
public task_hide_money(taskid)
{
	// Not alive
	if (!is_user_alive(ID_SPAWN))
		return;
	
	// Hide money
	message_begin(MSG_ONE, g_msgHideWeapon, _, ID_SPAWN)
	write_byte(HIDE_MONEY) // what to hide bitsum
	message_end()
	
	// Hide the HL crosshair that's drawn
	message_begin(MSG_ONE, g_msgCrosshair, _, ID_SPAWN)
	write_byte(0) // toggle
	message_end()
}

// Turn Off Game Flashlight
turn_off_flashlight(id)
{
	// Check if flashlight is on
	if (pev(id, pev_effects) & EF_DIMLIGHT)
	{
		// Turn it off
		set_pev(id, pev_effects, pev(id, pev_effects) & ~EF_DIMLIGHT)
		
		// Update HUD
		message_begin(MSG_ONE, g_msgFlashlight, _, id)
		write_byte(0) // toggle
		write_byte(100) // battery
		message_end()
	}
	
	// Clear any stored flashlight impulse (bugfix)
	set_pev(id, pev_impulse, 0)
}

// Infection Grenade Explosion
infection_explode(ent)
{
	// Round ended (bugfix)
	if (g_endround) return;
	
	// Get origin
	static Float:originF[3]
	pev(ent, pev_origin, originF)
	
	// Make the explosion
	create_blast(originF)
	
	// Infection nade explode sound
	engfunc(EngFunc_EmitSound, ent, CHAN_WEAPON, grenade_infect[random_num(0, sizeof grenade_infect - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Get attacker
	static attacker
	attacker = pev(ent, pev_owner)
	
	g_models_i = 0.0 // reset model change counter
	g_teams_i = 0.0 // reset team change counter
	
	// Collisions
	static victim
	victim = -1
	
	while ((victim = engfunc(EngFunc_FindEntityInSphere, victim, originF, NADE_EXPLOSION_RADIUS)) != 0)
	{
		// Only effect alive non-spawnprotected humans
		if (!is_user_alive(victim) || g_zombie[victim] || g_nodamage[victim])
			continue;
		
		// Last human is killed
		if (fnGetHumans() == 1)
		{
			ExecuteHamB(Ham_Killed, victim, attacker, 0)
			continue;
		}
		
		// Infected victim's sound
		engfunc(EngFunc_EmitSound, victim, CHAN_VOICE, grenade_infect_player[random_num(0, sizeof grenade_infect_player - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
		
		SendDeathMsg(attacker, victim) // send death notice
		FixDeadAttrib(victim) // fix the "dead" attrib on scoreboard
		UpdateFrags(attacker, victim, get_pcvar_num(cvar_fragsinfect), 1, 1) // add corresponding frags & deaths		
		
		zombieme(victim, attacker, 0, 1) // turn into zombie
		g_ammopacks[attacker] += get_pcvar_num(cvar_ammoinfect) // ammo packs given to zombie for infection
		fm_set_user_health(attacker, pev(attacker, pev_health)+get_pcvar_num(cvar_zombiebonushp)) // infection HP bonus
	}
	
	// Get rid of the grenade
	engfunc(EngFunc_RemoveEntity, ent)
}

// Fire Grenade Explosion
fire_explode(ent)
{
	// Get origin
	static Float:originF[3]
	pev(ent, pev_origin, originF)
	
	// Make the explosion
	create_blast2(originF)
	
	// Fire nade explode sound
	engfunc(EngFunc_EmitSound, ent, CHAN_WEAPON, grenade_fire[random_num(0, sizeof grenade_fire - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Collisions
	static victim
	victim = -1
	
	while ((victim = engfunc(EngFunc_FindEntityInSphere, victim, originF, NADE_EXPLOSION_RADIUS)) != 0)
	{
		// Only effect alive zombies
		if (!is_user_alive(victim) || !g_zombie[victim] || g_nodamage[victim])
			continue;
		
		// Heat icon
		message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, victim)
		write_byte(0) // damage save
		write_byte(0) // damage take
		write_long(DMG_BURN) // damage type
		write_coord(0) // x
		write_coord(0) // y
		write_coord(0) // z
		message_end()
		
		// Our task params
		static params[1]
		
		if (g_nemesis[victim]) // fire duration (nemesis takes less)
			params[0] = get_pcvar_num(cvar_fireduration)
		else
			params[0] = get_pcvar_num(cvar_fireduration)*5
		
		// Set burning task on victim
		set_task(0.1, "burning_flame", victim+TASK_BLOOD, params, sizeof params)
	}
	
	// Get rid of the grenade
	engfunc(EngFunc_RemoveEntity, ent)
}

// Frost Grenade Explosion
frost_explode(ent)
{
	// Get origin
	static Float:originF[3]
	pev(ent, pev_origin, originF)
	
	// Make the explosion
	create_blast3(originF)
	
	// Frost nade explode sound
	engfunc(EngFunc_EmitSound, ent, CHAN_WEAPON, grenade_frost[random_num(0, sizeof grenade_frost - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Collisions
	static victim
	victim = -1
	
	while ((victim = engfunc(EngFunc_FindEntityInSphere, victim, originF, NADE_EXPLOSION_RADIUS)) != 0)
	{
		// Only effect alive unfrozen zombies
		if (!is_user_alive(victim) || !g_zombie[victim] || g_frozen[victim] || g_nodamage[victim])
			continue;
		
		// Nemesis shouldn't be frozen
		if (g_nemesis[victim])
		{
			// Get player's origin
			static Float:origin2F[3]
			pev(victim, pev_origin, origin2F)
			
			// Broken glass sound
			engfunc(EngFunc_EmitSound, victim, CHAN_BODY, grenade_frost_break[random_num(0, sizeof grenade_frost_break - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
			
			// Glass shatter
			engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, origin2F, 0)
			write_byte(TE_BREAKMODEL) // TE id
			engfunc(EngFunc_WriteCoord, origin2F[0]) // x
			engfunc(EngFunc_WriteCoord, origin2F[1]) // y
			engfunc(EngFunc_WriteCoord, origin2F[2]+24.0) // z
			write_coord(16) // size x
			write_coord(16) // size y
			write_coord(16) // size z
			write_coord(random_num(-50, 50)) // velocity x
			write_coord(random_num(-50, 50)) // velocity y
			write_coord(25) // velocity z
			write_byte(10) // random velocity
			write_short(g_glassSpr) // model
			write_byte(10) // count
			write_byte(25) // life
			write_byte(BREAK_GLASS) // flags
			message_end()
			
			continue;
		}
		
		// Freeze icon
		message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, victim)
		write_byte(0) // damage save
		write_byte(0) // damage take
		write_long(DMG_DROWN) // damage type - DMG_FREEZE
		write_coord(0) // x
		write_coord(0) // y
		write_coord(0) // z
		message_end()
		
		// Light blue glow while frozen
		#if defined HANDLE_MODELS_ON_SEPARATE_ENT
		fm_set_rendering(g_ent_playermodel[victim], kRenderFxGlowShell, 0, 100, 200, kRenderNormal, 25)
		#else
		fm_set_rendering(victim, kRenderFxGlowShell, 0, 100, 200, kRenderNormal, 25)
		#endif
		
		// Freeze sound
		engfunc(EngFunc_EmitSound, victim, CHAN_BODY, grenade_frost_player[random_num(0, sizeof grenade_frost_player - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
		
		// Get freeze duration setting
		static Float:freezeduration
		freezeduration = get_pcvar_float(cvar_freezeduration)
		
		// Add a blue tint to their screen
		message_begin(MSG_ONE_UNRELIABLE, g_msgScreenFade, _, victim)
		write_short(UNIT_SECOND*1) // duration
		write_short(floatround(UNIT_SECOND*freezeduration)) // hold time
		write_short(FFADE_IN) // fade type
		write_byte(0) // red
		write_byte(50) // green
		write_byte(200) // blue
		write_byte(100) // alpha
		message_end()
		
		// Prevent from jumping
		if (pev(victim, pev_flags) & FL_ONGROUND)
			set_pev(victim, pev_gravity, 999999.9) // set really high
		else
			set_pev(victim, pev_gravity, 0.000001) // no gravity
		
		// Set a task to remove the freeze
		g_frozen[victim] = true;
		set_task(freezeduration, "remove_freeze", victim)
	}
	
	// Get rid of the grenade
	engfunc(EngFunc_RemoveEntity, ent)
}

// Remove freeze task
public remove_freeze(id)
{
	// Not alive or not frozen anymore
	if (!g_frozen[id] || !is_user_alive(id))
		return;
	
	// Unfreeze
	g_frozen[id] = false;
	
	// Restore normal gravity
	if (g_zombie[id])
		set_pev(id, pev_gravity, g_zclass_grav[g_zombieclass[id]])
	else
		set_pev(id, pev_gravity, get_pcvar_float(cvar_humangravity))
	
	// Broken glass sound
	engfunc(EngFunc_EmitSound, id, CHAN_BODY, grenade_frost_break[random_num(0, sizeof grenade_frost_break - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Remove glow
	#if defined HANDLE_MODELS_ON_SEPARATE_ENT
	fm_set_rendering(g_ent_playermodel[id])
	#else
	fm_set_rendering(id)
	#endif
	
	// Get player's origin
	static Float:origin2F[3]
	pev(id, pev_origin, origin2F)
	
	// Glass shatter
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, origin2F, 0)
	write_byte(TE_BREAKMODEL) // TE id
	engfunc(EngFunc_WriteCoord, origin2F[0]) // x
	engfunc(EngFunc_WriteCoord, origin2F[1]) // y
	engfunc(EngFunc_WriteCoord, origin2F[2]+24.0) // z
	write_coord(16) // size x
	write_coord(16) // size y
	write_coord(16) // size z
	write_coord(random_num(-50, 50)) // velocity x
	write_coord(random_num(-50, 50)) // velocity y
	write_coord(25) // velocity z
	write_byte(10) // random velocity
	write_short(g_glassSpr) // model
	write_byte(10) // count
	write_byte(25) // life
	write_byte(BREAK_GLASS) // flags
	message_end()
}

// Remove Stuff Task
public remove_stuff()
{
	static ent, removedoors
	removedoors = get_pcvar_num(cvar_removedoors)
	
	// Remove rotating doors
	if (removedoors > 0)
	{
		ent = -1;
		while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "func_door_rotating")) != 0)
			engfunc(EngFunc_SetOrigin, ent, Float:{8192.0 ,8192.0 ,8192.0})
	}
	
	// Remove all doors
	if (removedoors > 1)
	{
		ent = -1;
		while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "func_door")) != 0)
			engfunc(EngFunc_SetOrigin, ent, Float:{8192.0 ,8192.0 ,8192.0})
	}
	
	// Triggered lights
	if (!get_pcvar_num(cvar_triggered))
	{
		ent = -1
		while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "light")) != 0)
		{
			dllfunc(DLLFunc_Use, ent, 0); // turn off the light
			set_pev(ent, pev_targetname, 0) // prevent it from being triggered
		}
	}
}

// Set Custom Weapon Models
public replace_models(id)
{
	// Not alive
	if (!is_user_alive(id))
		return;
	
	switch (g_currentweapon[id])
	{
		case CSW_KNIFE: // Custom knife models
		{
			if (g_zombie[id] && !g_newround && !g_endround)
			{
				if (g_nemesis[id]) // Nemesis
				{
					set_pev(id, pev_viewmodel2, model_vknife_nemesis)
					set_pev(id, pev_weaponmodel2, "")
				}
				else // Zombies
				{
					static mdl[100]
					formatex(mdl, sizeof mdl - 1, "models/zombie_plague/%s", g_zclass_clawmodel[g_zombieclass[id]])					
					set_pev(id, pev_viewmodel2, mdl)
					set_pev(id, pev_weaponmodel2, "")
				}
			}
			else // Humans
			{
				set_pev(id, pev_viewmodel2, model_vknife_human)
				set_pev(id, pev_weaponmodel2, "models/p_knife.mdl")
			}
		}
		case CSW_M249: // Survivor's M249
		{
			if (g_survivor[id])
				set_pev(id, pev_viewmodel2, model_vm249_survivor)
		}
		case CSW_HEGRENADE: // Infection bomb or fire grenade
		{
			if (g_zombie[id] && !g_newround && !g_endround)
				set_pev(id, pev_viewmodel2, model_grenade_infect)
			else
				set_pev(id, pev_viewmodel2, model_grenade_fire)
		}
		case CSW_FLASHBANG: // Frost grenade
		{
			set_pev(id, pev_viewmodel2, model_grenade_frost)
		}
		case CSW_SMOKEGRENADE: // Flare grenade
		{
			set_pev(id, pev_viewmodel2, model_grenade_flare)
		}
	}
	
	#if defined HANDLE_MODELS_ON_SEPARATE_ENT
	fm_set_weaponmodel_ent(id)
	#endif
}

// Reset Player Vars
reset_vars(id, resetall)
{
	g_zombie[id] = false
	g_nemesis[id] = false
	g_survivor[id] = false
	g_firstzombie[id] = false
	g_lastzombie[id] = false
	g_lasthuman[id] = false
	g_frozen[id] = false
	g_nodamage[id] = false
	g_respawn_as_zombie[id] = false
	g_nvision[id] = false
	g_nvisionenabled[id] = false
	g_flashlight[id] = false
	g_flashbattery[id] = 100
	g_canbuy[id] = true
	
	if (resetall)
	{
		g_ammopacks[id] = 5
		g_zombieclass[id] = ZCLASS_NONE
		g_zombieclassnext[id] = 0
		g_damagedealt[id] = 0
		WPN_AUTO_ON = 0
	}
}

// Set spectators nightvision
public spec_nvision(id)
{
	// Not connected, playing, or bot
	if (!is_user_connected(id) || is_user_alive(id) || is_user_bot(id))
		return;
	
	// Give Night Vision?
	if (get_pcvar_num(cvar_nvggive))
	{
		g_nvision[id] = true
		
		// Turn on Night Vision automatically?
		if (get_pcvar_num(cvar_nvggive) == 1)
		{
			g_nvisionenabled[id] = true
			
			// Custom nvg?
			if (get_pcvar_num(cvar_cnvg))
			{
				remove_task(id+TASK_NVISION)
				set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
			}
			else
				set_user_gnvision(id, 1)
		}
	}
}

// Show HUD Task
public ShowHUD(taskid)
{
	static id
	id = ID_SHOWHUD;
	
	// Player died?
	if (!is_user_alive(id))
	{
		// Get spectating target
		id = pev(id, PEV_SPEC_TARGET)
		
		// Target not alive
		if (!is_user_alive(id)) return;
	}
	
	// Format the classname
	static class[32], red, green, blue
	
	if (g_zombie[id]) // zombies
	{
		red = 200
		green = 250
		blue = 0
		
		if (g_nemesis[id])
			formatex(class, sizeof class - 1, "%L", ID_SHOWHUD,"CLASS_NEMESIS")
		else
			copy(class, sizeof class - 1, g_zclass_name[g_zombieclass[id]])
	}
	else // humans
	{
		red = 0
		green = 0
		blue = 255
		
		if (g_survivor[id])
			formatex(class, sizeof class - 1, "%L", ID_SHOWHUD,"CLASS_SURVIVOR")
		else
			formatex(class, sizeof class - 1, "%L", ID_SHOWHUD,"CLASS_HUMAN")
	}
	
	// Spectating someone else?
	if (id != ID_SHOWHUD)
	{
		static name[32]
		get_user_name(id, name, sizeof name - 1)
		
		// Show name, health, class, and ammo packs
		set_hudmessage(255, 255, 255, HUD_SPECT_X, HUD_SPECT_Y, 0, 6.0, 1.1, 0.0, 0.0, -1)
		ShowSyncHudMsg(ID_SHOWHUD, g_MsgSync2, "%L %s^nHP: %d - %L %s - %L %d", ID_SHOWHUD, "SPECTATING", name, pev(id, pev_health), ID_SHOWHUD, "CLASS_CLASS", class, ID_SHOWHUD, "AMMO_PACKS1", g_ammopacks[id])
	}
	else
	{
		// Show health, class and ammo packs
		set_hudmessage(red, green, blue, HUD_STATS_X, HUD_STATS_Y, 0, 6.0, 1.1, 0.0, 0.0, -1)
		ShowSyncHudMsg(ID_SHOWHUD, g_MsgSync2, "%L: %d - %L %s - %L %d", id, "ZOMBIE_ATTRIB1", pev(ID_SHOWHUD, pev_health), ID_SHOWHUD, "CLASS_CLASS", class, ID_SHOWHUD, "AMMO_PACKS1", g_ammopacks[ID_SHOWHUD])
	}
}

// Play idle zombie sounds
public zombie_play_idle(taskid)
{
	// Round ended/new one starting
	if (g_endround || g_newround)
		return;
	
	// Last zombie?
	if (g_lastzombie[ID_BLOOD])
		engfunc(EngFunc_EmitSound, ID_BLOOD, CHAN_VOICE, zombie_idle_last[random_num(0, sizeof zombie_idle_last - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
	else
		engfunc(EngFunc_EmitSound, ID_BLOOD, CHAN_VOICE, zombie_idle[random_num(0, sizeof zombie_idle - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
}

// Madness Over Task
public madness_over(taskid)
{
	g_nodamage[ID_BLOOD] = false
}

// Place user at a random spawn
do_random_spawn(id)
{
	// No spawns?
	if (!g_spawnCount)
		return;
	
	// Get whether the player is crouching
	static hull
	hull = (pev(id, pev_flags) & FL_DUCKING) ? HULL_HEAD : HULL_HUMAN
	
	// Choose random spawn to start looping at
	static sp_index, i
	sp_index = random_num(0, g_spawnCount - 1)
	
	// Try to find a clear spawn
	for (i = sp_index + 1; i != 999; i++)
	{
		// Start over when we reach the end
		if (i >= g_spawnCount) i = 0
		
		// Free spawn space?
		if (is_hull_vacant(g_spawns[i], hull))
		{
			// Engfunc_SetOrigin is used so ent's mins and maxs get updated instantly
			engfunc(EngFunc_SetOrigin, id, g_spawns[i])
			break;
		}
		
		// Loop completed, no free space found
		if (i == sp_index) break;
	}
}

// Get Zombies -returns alive zombies number-
fnGetZombies()
{
	static iZombies, id
	iZombies = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (is_user_alive(id) && g_zombie[id])
			iZombies++
	}
	
	return iZombies;
}

// Get Humans -returns alive humans number-
fnGetHumans()
{
	static iHumans, id
	iHumans = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (is_user_alive(id) && !g_zombie[id])
			iHumans++
	}
	
	return iHumans;
}

// Get Alive -returns alive players number-
fnGetAlive()
{
	static iAlive, id
	iAlive = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (is_user_alive(id))
			iAlive++
	}
	
	return iAlive;
}

// Get Random Alive -returns index of alive player number n -
fnGetRandomAlive(n)
{
	static iAlive, id
	iAlive = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (is_user_alive(id))
			iAlive++
		
		if (iAlive == n)
			return id;
	}
	
	return -1;
}

// Get Playing -returns number of users playing-
fnGetPlaying()
{
	static iPlaying, id, team
	iPlaying = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (is_user_connected(id))
		{
			team = fm_get_user_team(id)
			
			if (team != CS_TEAM_SPECTATOR && team != CS_TEAM_UNASSIGNED)
				iPlaying++
		}
	}
	
	return iPlaying;
}

// Get CTs -returns number of CTs connected-
fnGetCTs()
{
	static iCTs, id
	iCTs = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (is_user_connected(id))
		{			
			if (fm_get_user_team(id) == CS_TEAM_CT)
				iCTs++
		}
	}
	
	return iCTs;
}

// Get Ts -returns number of Ts connected-
fnGetTs()
{
	static iTs, id
	iTs = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (is_user_connected(id))
		{			
			if (fm_get_user_team(id) == CS_TEAM_T)
				iTs++
		}
	}
	
	return iTs;
}

// Last Zombie Check -check for last zombie and set its flag-
public fnCheckLastZombie()
{
	static id
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Last zombie
		if (g_zombie[id] && is_user_alive(id) && fnGetZombies() == 1)
			g_lastzombie[id] = true
		else
			g_lastzombie[id] = false
		
		// Last human
		if (!g_zombie[id] && !g_survivor[id] && is_user_alive(id) && fnGetHumans() == 1)
		{
			// Reward extra hp for last human?
			if (!g_lasthuman[id]) fm_set_user_health(id, pev(id, pev_health)+get_pcvar_num(cvar_humanlasthp))
			g_lasthuman[id] = true
		}
		else
			g_lasthuman[id] = false
	}
}

// Save player's stats into the database
save_stats(id)
{
	// Get user name
	static name[32]
	get_user_name(id, name, sizeof name - 1)
	
	// Check whether there is another record already in that slot
	if (db_name[id][0] && !equal(name, db_name[id]))
	{
		// If DB size is exceeded, write over old records
		if (db_slot_i >= sizeof db_name)
			db_slot_i = g_maxplayers+1
		
		// Move previous record onto an additional save slot
		copy(db_name[db_slot_i], sizeof db_name[] - 1, db_name[id])
		db_ammopacks[db_slot_i] = db_ammopacks[id]
		db_zombieclass[db_slot_i] = db_zombieclass[id]
		db_slot_i++
	}
	
	// Now save the current player stats
	copy(db_name[id], sizeof db_name[] - 1, name) // name
	db_ammopacks[id] = g_ammopacks[id]  // ammo packs
	db_zombieclass[id] = g_zombieclassnext[id] // zombie class
}

// Load player's stats from the database (if a record is found)
load_stats(id)
{
	// Get user name
	static name[32], i
	get_user_name(id, name, sizeof name - 1)
	
	// Look for a matching record in the DB
	for (i = 0; i < sizeof db_name; i++)
	{
		if (equal(name, db_name[i]))
		{
			// Bingo!
			g_ammopacks[id] = db_ammopacks[i]
			g_zombieclass[id] = db_zombieclass[i]
			g_zombieclassnext[id] = db_zombieclass[i]
			return;
		}
	}
}

// Checks if a player should leap
allowed_leap(id)
{
	// Leap available for zombies/nemesis/survivor only
	if ((!g_zombie[id] && !g_survivor[id]) || g_frozen[id])
		return false;
	
	// Nemesis cvar not enabled
	if (g_nemesis[id] && !get_pcvar_num(cvar_leapnemesis))
		return false;
	
	// Survivor cvar not enabled
	if (g_survivor[id] && !get_pcvar_num(cvar_leapsurvivor))
		return false;
	
	// Get zombie cvar
	static leapzombies
	leapzombies = get_pcvar_num(cvar_leapzombies)
	
	// Zombie cvar not enabled
	if (leapzombies == 0 && !g_nemesis[id] && !g_survivor[id])
		return false;
	
	// Not the first zombie
	if (leapzombies == 2 && !g_nemesis[id] && !g_survivor[id] && !g_firstzombie[id])
		return false;
	
	// Not the last zombie
	if (leapzombies == 3 && !g_nemesis[id] && !g_survivor[id] && !g_lastzombie[id])
		return false;
	
	// Get currently pressed buttons
	static buttons
	buttons = pev(id, pev_button)
	
	// Not doing a longjump (added bot support)
	if ((!(buttons & IN_JUMP) || !(buttons & IN_DUCK)) && !is_user_bot(id))
		return false;
	
	// Get cooldown cvar
	static Float:cooldown
	cooldown = g_survivor[id] ? get_pcvar_float(cvar_leapsurvivorcooldown) : g_nemesis[id] ? get_pcvar_float(cvar_leapnemesiscooldown) : get_pcvar_float(cvar_leapzombiescooldown)
	
	// Cooldown not over yet
	if (get_gametime() - g_lastleaptime[id] < cooldown)
		return false;
	
	// Not on ground or not enough speed
	if (!(pev(id, pev_flags) & FL_ONGROUND) || fm_get_speed(id) < 80)
		return false;
	
	return true;
}

// Checks if a player should be Pain Shock Free
allowed_painshockfree(id)
{
	// Pain shock free available for zombies/nemesis/survivor only
	if (!g_zombie[id] && !g_survivor[id])
		return false;
	
	// Nemesis cvar not enabled
	if (g_nemesis[id] && !get_pcvar_num(cvar_nempainfree))
		return false;
	
	// Survivor cvar not enabled
	if (g_survivor[id] && !get_pcvar_num(cvar_survpainfree))
		return false;
	
	// Get zombie cvar
	static zombiepainfree
	zombiepainfree = get_pcvar_num(cvar_zombiepainfree)
	
	// Zombie cvar not enabled
	if (zombiepainfree == 0 && !g_survivor[id] && !g_nemesis[id])
		return false;
	
	// Not the last zombie
	if (zombiepainfree == 2 && !g_survivor[id] && !g_nemesis[id] && !g_lastzombie[id])
		return false;
	
	// Not on ground
	if (!(pev(id, pev_flags) & FL_ONGROUND))
		return false;
	
	return true;
}

// Checks if a player is allowed to be zombie
allowed_zombie(id)
{
	if (g_zombie[id] || g_swarmround || g_nemround || g_survround || g_plagueround || g_endround || !is_user_alive(id) || task_exists(TASK_WELCOMEMSG) || (!g_zombie[id] && fnGetHumans() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to be human
allowed_human(id)
{
	if (!g_zombie[id] || g_swarmround || g_nemround || g_survround || g_plagueround || g_endround || !is_user_alive(id) || task_exists(TASK_WELCOMEMSG) || (g_zombie[id] && fnGetZombies() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to be survivor
allowed_survivor(id)
{
	if (g_endround || !g_newround || !is_user_alive(id) || !get_pcvar_num(cvar_surv) || task_exists(TASK_WELCOMEMSG) || fnGetAlive() < get_pcvar_num(cvar_survminplayers))
		return false;
	
	return true;
}

// Checks if a player is allowed to be nemesis
allowed_nemesis(id)
{
	if (g_endround || !g_newround || !is_user_alive(id) || !get_pcvar_num(cvar_nem) || task_exists(TASK_WELCOMEMSG) || fnGetAlive() < get_pcvar_num(cvar_nemminplayers))
		return false;
	
	return true;
}

// Checks if a player is allowed to respawn
allowed_respawn(id)
{
	static team
	team = fm_get_user_team(id)
	
	if (g_endround || g_survround || g_swarmround || g_nemround || g_plagueround || team == CS_TEAM_SPECTATOR || team == CS_TEAM_UNASSIGNED || !is_user_connected(id) || is_user_alive(id))
		return false;
	
	return true;
}

// Checks if swarm mode is allowed
allowed_swarm()
{
	if (g_endround || !g_newround || !get_pcvar_num(cvar_swarm) || task_exists(TASK_WELCOMEMSG) || fnGetAlive() < get_pcvar_num(cvar_swarmminplayers))
		return false;
	
	return true;
}

// Checks if multi infection mode is allowed
allowed_multi()
{
	if (g_endround || !g_newround || !get_pcvar_num(cvar_multi) || task_exists(TASK_WELCOMEMSG) || floatround(fnGetAlive()*get_pcvar_float(cvar_multiratio), floatround_ceil) < 2 || fnGetAlive() < get_pcvar_num(cvar_multiminplayers))
		return false;
	
	return true;
}

// Checks if plague mode is allowed
allowed_plague()
{
	if (g_endround || !g_newround || !get_pcvar_num(cvar_plague) || task_exists(TASK_WELCOMEMSG) || floatround((fnGetAlive()-2)*get_pcvar_float(cvar_plagueratio), floatround_ceil) < 1 || fnGetAlive() < get_pcvar_num(cvar_plagueminplayers))
		return false;
	
	return true;
}

// Admin Command. zp_zombie
command_zombie(id, player)
{
	static name1[32], name2[32]
	get_user_name(id, name1, sizeof name1 - 1)
	get_user_name(player, name2, sizeof name2 - 1)
	
	// Show activity?
	switch (get_pcvar_num(cvar_showactivity))
	{
		case 1: client_print(0, print_chat, "ADMIN - %s %L", name2, LANG_PLAYER, "CMD_INFECT")
		case 2: client_print(0, print_chat, "ADMIN %s - %s %L", name1, name2, LANG_PLAYER, "CMD_INFECT")
	}
	
	// Log to Zombie Plague log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static logdata[100], authid[32], ip[16]
		get_user_authid(id, authid, sizeof authid - 1)
		get_user_ip(id, ip, sizeof ip - 1, 1)
		formatex(logdata, sizeof logdata - 1, "ADMIN %s <%s><%s> - %s %L (Players: %d/%d)", name1, authid, ip, name2, LANG_SERVER, "CMD_INFECT", fnGetPlaying(), g_maxplayers)
		log_to_file("zombieplague.log", logdata)
	}
	
	// New round?
	if (g_newround)
	{
		// Set as first zombie
		remove_task(TASK_MAKEZOMBIE)
		make_a_zombie(MODE_INFECTION, player)
	}
	else
	{
		// Just infect
		zombieme(player, 0, 0, 0)
	}
}

// Admin Command. zp_human
command_human(id, player)
{
	static name1[32], name2[32]
	get_user_name(id, name1, sizeof name1 - 1)
	get_user_name(player, name2, sizeof name2 - 1)
	
	// Show activity?
	switch (get_pcvar_num(cvar_showactivity))
	{
		case 1: client_print(0, print_chat, "ADMIN - %s %L", name2, LANG_PLAYER, "CMD_DISINFECT")
		case 2: client_print(0, print_chat, "ADMIN %s - %s %L", name1, name2, LANG_PLAYER, "CMD_DISINFECT")
	}
	
	// Log to Zombie Plague log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static logdata[100], authid[32], ip[16]
		get_user_authid(id, authid, sizeof authid - 1)
		get_user_ip(id, ip, sizeof ip - 1, 1)
		formatex(logdata, sizeof logdata - 1, "ADMIN %s <%s><%s> - %s %L (Players: %d/%d)", name1, authid, ip, name2, LANG_SERVER,"CMD_DISINFECT", fnGetPlaying(), g_maxplayers)
		log_to_file("zombieplague.log", logdata)
	}
	
	// Turn to human
	humanme(player, 0)
}

// Admin Command. zp_survivor
command_survivor(id, player)
{
	static name1[32], name2[32]
	get_user_name(id, name1, sizeof name1 - 1)
	get_user_name(player, name2, sizeof name2 - 1)
	
	// Show activity?
	switch (get_pcvar_num(cvar_showactivity))
	{
		case 1: client_print(0, print_chat, "ADMIN - %s %L", name2, LANG_PLAYER, "CMD_SURVIVAL")
		case 2: client_print(0, print_chat, "ADMIN %s - %s %L", name1, name2, LANG_PLAYER, "CMD_SURVIVAL")
	}
	
	 // Log to Zombie Plague log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static logdata[100], authid[32], ip[16]
		get_user_authid(id, authid, sizeof authid - 1)
		get_user_ip(id, ip, sizeof ip - 1, 1)
		formatex(logdata, sizeof logdata - 1, "ADMIN %s <%s><%s> - %s %L (Players: %d/%d)", name1, authid, ip, name2, LANG_SERVER,"CMD_SURVIVAL", fnGetPlaying(), g_maxplayers)
		log_to_file("zombieplague.log", logdata)
	}
	
	// Turn into a Survivor
	remove_task(TASK_MAKEZOMBIE)
	make_a_zombie(MODE_SURVIVOR, player)
}

// Admin Command. zp_nemesis
command_nemesis(id, player)
{
	static name1[32], name2[32]
	get_user_name(id, name1, sizeof name1 - 1)
	get_user_name(player, name2, sizeof name2 - 1)
	
	// Show activity?
	switch (get_pcvar_num(cvar_showactivity))
	{
		case 1: client_print(0, print_chat, "ADMIN - %s %L", name2, LANG_PLAYER, "CMD_NEMESIS")
		case 2: client_print(0, print_chat, "ADMIN %s - %s %L", name1, name2, LANG_PLAYER, "CMD_NEMESIS")
	}
	
	// Log to Zombie Plague log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static logdata[100], authid[32], ip[16]
		get_user_authid(id, authid, sizeof authid - 1)
		get_user_ip(id, ip, sizeof ip - 1, 1)
		formatex(logdata, sizeof logdata - 1, "ADMIN %s <%s><%s> - %s %L (Players: %d/%d)", name1, authid, ip, name2, LANG_SERVER,"CMD_NEMESIS", fnGetPlaying(), g_maxplayers)
		log_to_file("zombieplague.log", logdata)
	}
	
	// Turn into a Nemesis
	remove_task(TASK_MAKEZOMBIE)
	make_a_zombie(MODE_NEMESIS, player)
}

// Admin Command. zp_respawn
command_respawn(id, player)
{
	static name1[32], name2[32]
	get_user_name(id, name1, sizeof name1 - 1)
	get_user_name(player, name2, sizeof name2 - 1)
	
	// Show activity?
	switch (get_pcvar_num(cvar_showactivity))
	{
		case 1: client_print(0, print_chat, "ADMIN - %s %L", name2, LANG_PLAYER, "CMD_RESPAWN")
		case 2: client_print(0, print_chat, "ADMIN %s - %s %L", name1, name2, LANG_PLAYER, "CMD_RESPAWN")
	}
	
	// Log to Zombie Plague log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static logdata[100], authid[32], ip[16]
		get_user_authid(id, authid, sizeof authid - 1)
		get_user_ip(id, ip, sizeof ip - 1, 1)
		formatex(logdata, sizeof logdata - 1, "ADMIN %s <%s><%s> - %s %L (Players: %d/%d)", name1, authid, ip, name2, LANG_SERVER, "CMD_RESPAWN", fnGetPlaying(), g_maxplayers)
		log_to_file("zombieplague.log", logdata)
	}
	
	// Get deathmatch mode status
	static deathmatch
	deathmatch = get_pcvar_num(cvar_deathmatch)
	
	// Respawn as zombie?
	if (deathmatch == 2 || (deathmatch == 3 && random_num(0, 1)) || (deathmatch == 4 && fnGetZombies() < fnGetAlive()/2))
		g_respawn_as_zombie[player] = true
	
	respawn_player(player+TASK_SPAWN);
}

// Admin Command. zp_swarm
command_swarm(id)
{
	static name1[32]
	get_user_name(id, name1, sizeof name1 - 1)
	
	// Show activity?
	switch (get_pcvar_num(cvar_showactivity))
	{
		case 1: client_print(0, print_chat, "ADMIN - %L", LANG_PLAYER, "CMD_SWARM")
		case 2: client_print(0, print_chat, "ADMIN %s - %L", name1, LANG_PLAYER, "CMD_SWARM")
	}
	
	// Log to Zombie Plague log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static logdata[100], authid[32], ip[16]
		get_user_authid(id, authid, sizeof authid - 1)
		get_user_ip(id, ip, sizeof ip - 1, 1)
		formatex(logdata, sizeof logdata - 1, "ADMIN %s <%s><%s> - %L (Players: %d/%d)", name1, authid, ip, LANG_SERVER, "CMD_SWARM", fnGetPlaying(), g_maxplayers)
		log_to_file("zombieplague.log", logdata)
	}
	
	// Call Swarm Mode
	remove_task(TASK_MAKEZOMBIE)
	make_a_zombie(MODE_SWARM, 0)
}

// Admin Command. zp_multi
command_multi(id)
{
	static name1[32]
	get_user_name(id, name1, sizeof name1 - 1)
	
	// Show activity?
	switch (get_pcvar_num(cvar_showactivity))
	{
		case 1: client_print(0, print_chat, "ADMIN - %L", LANG_PLAYER, "CMD_MULTI")
		case 2: client_print(0, print_chat, "ADMIN %s - %L", name1, LANG_PLAYER, "CMD_MULTI")
	}
	
	// Log to Zombie Plague log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static logdata[100], authid[32], ip[16]
		get_user_authid(id, authid, sizeof authid - 1)
		get_user_ip(id, ip, sizeof ip - 1, 1)
		formatex(logdata, sizeof logdata - 1, "ADMIN %s <%s><%s> - %L (Players: %d/%d)", name1, authid, ip, LANG_SERVER,"CMD_MULTI", fnGetPlaying(), g_maxplayers)
		log_to_file("zombieplague.log", logdata)
	}
	
	// Call Multi Infection
	remove_task(TASK_MAKEZOMBIE)
	make_a_zombie(MODE_MULTI, 0)
}

// Admin Command. zp_plague
command_plague(id)
{
	static name1[32]
	get_user_name(id, name1, sizeof name1 - 1)
	
	// Show activity?
	switch (get_pcvar_num(cvar_showactivity))
	{
		case 1: client_print(0, print_chat, "ADMIN - %L", LANG_PLAYER, "CMD_PLAGUE")
		case 2: client_print(0, print_chat, "ADMIN %s - %L", name1, LANG_PLAYER, "CMD_PLAGUE")
	}
	
	// Log to Zombie Plague log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static logdata[100], authid[32], ip[16]
		get_user_authid(id, authid, sizeof authid - 1)
		get_user_ip(id, ip, sizeof ip - 1, 1)
		formatex(logdata, sizeof logdata - 1, "ADMIN %s <%s><%s> - %L (Players: %d/%d)", name1, authid, ip, LANG_SERVER,"CMD_PLAGUE", fnGetPlaying(), g_maxplayers)
		log_to_file("zombieplague.log", logdata)
	}
	
	// Call Plague Mode
	remove_task(TASK_MAKEZOMBIE)
	make_a_zombie(MODE_PLAGUE, 0)
}

/*================================================================================
 [Custom Natives]
=================================================================================*/

// Native: zp_get_user_zombie
public native_get_user_zombie(id)
{
	return g_zombie[id];
}

// Native: zp_get_user_nemesis
public native_get_user_nemesis(id)
{
	return g_nemesis[id];
}

// Native: zp_get_user_survivor
public native_get_user_survivor(id)
{
	return g_survivor[id];
}

public native_get_user_first_zombie(id)
{
	return g_firstzombie[id];
}

// Native: zp_get_user_last_zombie
public native_get_user_last_zombie(id)
{
	return g_lastzombie[id];
}

// Native: zp_get_user_last_human
public native_get_user_last_human(id)
{
	return g_lasthuman[id];
}

// Native: zp_get_user_zombie_class
public native_get_user_zombie_class(id)
{
	return g_zombieclass[id];
}

// Native: zp_set_user_zombie_class
public native_set_user_zombie_class(id, classid)
{
	g_zombieclassnext[id] = classid
}

// Native: zp_get_user_ammo_packs
public native_get_user_ammo_packs(id)
{
	return g_ammopacks[id];
}

// Native: zp_set_user_ammo_packs
public native_set_user_ammo_packs(id, amount)
{
	g_ammopacks[id] = amount;
}

// Native: zp_get_zombie_maxhealth
public native_get_zombie_maxhealth(id)
{
	if (g_zombie[id] && !g_nemesis[id])
	{
		if (g_firstzombie[id])
			return floatround(g_zclass_hp[g_zombieclass[id]]*get_pcvar_float(cvar_zombiefirsthp));
		else
			return g_zclass_hp[g_zombieclass[id]];
	}
	return -1;
}

// Native: zp_get_user_batteries
public native_get_user_batteries(id)
{
	return g_flashbattery[id];
}

// Native: zp_set_user_batteries
public native_set_user_batteries(id, value)
{
	g_flashbattery[id] = value;
}

// Native: zp_infect_user
public native_infect_user(id, infector)
{
	// Not allowed to be zombie or round not started yet
	if (!allowed_zombie(id) || g_newround)
		return 0;
	
	// Infect
	zombieme(id, infector, 0, 0)
	return 1;
}

// Native: zp_disinfect_user
public native_disinfect_user(id)
{
	// Not allowed to be human
	if (!allowed_human(id))
		return 0;
	
	// Turn to human
	humanme(id, 0)
	return 1;
}

// Native: zp_respawn_user
public native_respawn_user(id, team)
{
	// Respawn not allowed
	if (!allowed_respawn(id))
		return 0;
	
	// Respawn as zombie?
	g_respawn_as_zombie[id] = (team == ZP_TEAM_ZOMBIE) ? true : false
	
	// Respawnish!
	respawn_player(id+TASK_SPAWN)
	return 1;
}

// Native: zp_has_round_started
public native_has_round_started()
{
	return !g_newround;
}

// Native: zp_is_nemesis_round
public native_is_nemesis_round()
{
	return g_nemround;
}

// Native: zp_is_survivor_round
public native_is_survivor_round()
{
	return g_survround;
}

// Native: zp_is_swarm_round
public native_is_swarm_round()
{
	return g_swarmround;
}

// Native: zp_is_plague_round
public native_is_plague_round()
{
	return g_plagueround;
}

// Native: zp_register_extra_item
public native_register_extra_item(const name[], cost, team)
{
	// Reached extra items limit
	if (g_extraitem_i >= sizeof g_extraitem_name)
		return -1;
	
	// Strings passed byref
	param_convert(1)
	
	// Add the item
	copy(g_extraitem_name[g_extraitem_i], sizeof g_extraitem_name[] - 1, name)
	g_extraitem_cost[g_extraitem_i] = cost
	g_extraitem_team[g_extraitem_i] = team
	
	// Increase registered items counter
	g_extraitem_i++
	
	// Return id under which we registered the item
	return g_extraitem_i-1;
}

// Function: zp_register_extra_item (to be used within this plugin only)
native_register_extra_item2(const name[], cost, team)
{
	// Reached extra items limit
	if (g_extraitem_i >= sizeof g_extraitem_name)
		return;
	
	// Add the item
	copy(g_extraitem_name[g_extraitem_i], sizeof g_extraitem_name[] - 1, name)
	g_extraitem_cost[g_extraitem_i] = cost
	g_extraitem_team[g_extraitem_i] = team
	
	// Increase registered items counter
	g_extraitem_i++
}

// Native: zp_register_zombie_class
public native_register_zombie_class(const name[], const info[], const model[], const clawmodel[], hp, speed, Float:gravity, Float:knockback)
{
	// Reached zombie classes limit
	if (g_zclass_i >= sizeof g_zclass_name)
		return -1;
	
	// Strings passed byref
	param_convert(1)
	param_convert(2)
	param_convert(3)
	param_convert(4)
	
	// Add the class
	copy(g_zclass_name[g_zclass_i], sizeof g_zclass_name[] - 1, name)
	copy(g_zclass_info[g_zclass_i], sizeof g_zclass_info[] - 1, info)
	copy(g_zclass_model[g_zclass_i], sizeof g_zclass_model[] - 1, model)
	copy(g_zclass_clawmodel[g_zclass_i], sizeof g_zclass_clawmodel[] - 1, clawmodel)
	g_zclass_hp[g_zclass_i] = hp
	g_zclass_spd[g_zclass_i] = speed
	g_zclass_grav[g_zclass_i] = gravity
	g_zclass_kb[g_zclass_i] = knockback
	
	// Precache custom models and retrieve the modelindex
	new prec_mdl[100]
	formatex(prec_mdl, sizeof prec_mdl - 1, "models/player/%s/%s.mdl", model, model)
	g_zclass_modelindex[g_zclass_i] = engfunc(EngFunc_PrecacheModel, prec_mdl)
	formatex(prec_mdl, sizeof prec_mdl - 1, "models/zombie_plague/%s", clawmodel)
	engfunc(EngFunc_PrecacheModel, prec_mdl)
	
	// Increase registered classes counter
	g_zclass_i++
	
	// Return id under which we registered the class
	return g_zclass_i-1;
}

/*================================================================================
 [Custom Messages]
=================================================================================*/

// Custom Night Vision
public set_user_nvision(taskid)
{
	// Not meant to have nvision or not enabled
	if (!g_nvision[ID_NVISION] || !g_nvisionenabled[ID_NVISION])
	{
		// Task not needed anymore
		remove_task(taskid);
		return;
	}
	
	// Get player origin and alive status
	static Float:originF[3], alive
	pev(ID_NVISION, pev_origin, originF)
	alive = is_user_alive(ID_NVISION)
	
	// Nightvision message
	message_begin(MSG_ONE_UNRELIABLE, SVC_TEMPENTITY, _, ID_NVISION)
	write_byte(TE_DLIGHT) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_byte(get_pcvar_num(cvar_nvgsize)) // radius
	
	// Nemesis / Madness / Spectator in nemesis round
	if (g_nemesis[ID_NVISION] || g_nodamage[ID_NVISION] || (!alive && g_nemround))
	{
		write_byte(get_pcvar_num(cvar_nemnvgcolor[0])) // r
		write_byte(get_pcvar_num(cvar_nemnvgcolor[1])) // g
		write_byte(get_pcvar_num(cvar_nemnvgcolor[2])) // b
	}
	// Human / Spectator in normal round
	else if (!g_zombie[ID_NVISION] || !alive)
	{
		write_byte(get_pcvar_num(cvar_humnvgcolor[0])) // r
		write_byte(get_pcvar_num(cvar_humnvgcolor[1])) // g
		write_byte(get_pcvar_num(cvar_humnvgcolor[2])) // b
	}
	// Zombie
	else
	{
		write_byte(get_pcvar_num(cvar_nvgcolor[0])) // r
		write_byte(get_pcvar_num(cvar_nvgcolor[1])) // g
		write_byte(get_pcvar_num(cvar_nvgcolor[2])) // b
	}
	
	write_byte(2) // life
	write_byte(0) // decay rate
	message_end()
}

// Game Nightvision
set_user_gnvision(id, toggle)
{
	// Toggle NVG message
	message_begin(MSG_ONE, g_msgNVGToggle, _, id)
	write_byte(toggle) // toggle
	message_end()
}

// Custom Flashlight
public set_user_flashlight(taskid)
{
	// Not meant to have flashlight / not enabled / depleted
	if (!g_flashlight[ID_FLASH] || g_flashbattery[ID_FLASH] <= 0 || !get_pcvar_num(cvar_cflash))
	{
		// Task not needed anymore
		remove_task(taskid);
		return;
	}
	
	// Disable flashlight if it shouldn't be available
	if (g_zombie[ID_FLASH] || g_survivor[ID_FLASH] || !is_user_alive(ID_FLASH))
	{
		// Turn it off
		g_flashlight[ID_FLASH] = false;
		
		// Update flashlight HUD
		message_begin(MSG_ONE, g_msgFlashlight, _, ID_FLASH)
		write_byte(0) // toggle
		write_byte(100) // battery
		message_end()
		
		// Task not needed anymore
		remove_task(taskid);
		return;
	}
	
	// Get player and aiming origins
	static Float:originF[3], Float:destoriginF[3]
	pev(ID_FLASH, pev_origin, originF)
	fm_get_aim_origin(ID_FLASH, destoriginF)
	
	// Make sure it's within the max distance
	if (get_distance_f(originF, destoriginF) > get_pcvar_float(cvar_flashdist))
		return;
	
	// Flashlight
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, destoriginF, 0)
	write_byte(TE_DLIGHT) // TE id
	engfunc(EngFunc_WriteCoord, destoriginF[0]) // x
	engfunc(EngFunc_WriteCoord, destoriginF[1]) // y
	engfunc(EngFunc_WriteCoord, destoriginF[2]) // z
	write_byte(get_pcvar_num(cvar_flashsize)) // radius
	write_byte(get_pcvar_num(cvar_flashcolor[0])) // r
	write_byte(get_pcvar_num(cvar_flashcolor[1])) // g
	write_byte(get_pcvar_num(cvar_flashcolor[2])) // b
	write_byte(3) // life
	write_byte(0) // decay rate
	message_end()
}

// Infection special effects on victim
infectionFX1(id)
{
	// Screen fade
	message_begin(MSG_ONE_UNRELIABLE, g_msgScreenFade, _, id)
	write_short(UNIT_SECOND*1) // duration
	write_short(UNIT_SECOND*0) // hold time
	write_short(FFADE_IN) // fade type
	write_byte((g_nemesis[id]) ? get_pcvar_num(cvar_nemnvgcolor[0]) : get_pcvar_num(cvar_nvgcolor[0])) // r
	write_byte((g_nemesis[id]) ? get_pcvar_num(cvar_nemnvgcolor[1]) : get_pcvar_num(cvar_nvgcolor[1])) // g
	write_byte((g_nemesis[id]) ? get_pcvar_num(cvar_nemnvgcolor[2]) : get_pcvar_num(cvar_nvgcolor[2])) // b
	write_byte (255) // alpha
	message_end()
	
	// Infection icon
	message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, id)
	write_byte(0) // damage save
	write_byte(0) // damage take
	write_long(DMG_NERVEGAS) // damage type - DMG_RADIATION
	write_coord(0) // x
	write_coord(0) // y
	write_coord(0) // z
	message_end()
}

// Infection special effects or nemesis aura
public infectionFX2(id)
{
	// Not alive
	if (!is_user_alive(id))
		return;
	
	// Get player origin
	static Float:originF[3]
	pev(id, pev_origin, originF)
	
	// Colored Aura
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_DLIGHT) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_byte(20) // radius
	write_byte((g_nemesis[id] || g_nodamage[id]) ? get_pcvar_num(cvar_nemnvgcolor[0]) : get_pcvar_num(cvar_nvgcolor[0])) // r
	write_byte((g_nemesis[id] || g_nodamage[id]) ? get_pcvar_num(cvar_nemnvgcolor[1]) : get_pcvar_num(cvar_nvgcolor[1])) // g
	write_byte((g_nemesis[id] || g_nodamage[id]) ? get_pcvar_num(cvar_nemnvgcolor[2]) : get_pcvar_num(cvar_nvgcolor[2])) // b
	write_byte(2) // life
	write_byte(0) // decay rate
	message_end()
	
	// Keep calling back the task for nemesis/zombie madness aura
	if (g_nodamage[id] || (g_nemesis[id] && get_pcvar_num(cvar_nemaura)))
	{
		set_task(0.1, "infectionFX2", id)
		return;
	}
	
	// Tracers
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_IMPLOSION) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_byte(128) // radius
	write_byte(20) // count
	write_byte(3) // duration
	message_end()
	
	// Particle Burst
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_PARTICLEBURST) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_short(50) // radius
	write_byte(70) // color
	write_byte(3) // duration (will be randomized a bit)
	message_end()
}

// Make zombies leave footsteps and bloodstains on the floor
public make_blood(taskid)
{
	// Only bleed when moving on ground
	if (fm_get_speed(ID_BLOOD) < 80 || !(pev(ID_BLOOD, pev_flags) & FL_ONGROUND))
		return;
	
	// Get user origin
	static Float:originF[3]
	pev(ID_BLOOD, pev_origin, originF);
	
	// If ducking set a little lower
	if (pev(ID_BLOOD, pev_bInDuck))
		originF[2] -= 18.0
	else
		originF[2] -= 36.0
	
	// Send the decal message
	engfunc(EngFunc_MessageBegin, MSG_PAS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_WORLDDECAL) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_byte(zombie_decals[random_num(0, sizeof zombie_decals - 1)] + (g_czero*12)) // random decal number (offsets +12 for CZ)
	message_end()
}

// Flare Lighting
public flare_lighting(args[5])
{
	// Unexistant flare entity?
	if (!pev_valid(FLARE_ENTITY))
		return;
	
	// Flare depleted -clean up the mess-
	if (FLARE_DURATION <= 0)
	{
		engfunc(EngFunc_RemoveEntity, FLARE_ENTITY)
		return;
	}
	
	// Get origin
	static Float:originF[3]
	pev(FLARE_ENTITY, pev_origin, originF)
	
	// Lighting
	engfunc(EngFunc_MessageBegin, MSG_PAS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_DLIGHT) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_byte(get_pcvar_num(cvar_flaresize)) // radius
	write_byte(FLARE_R) // r
	write_byte(FLARE_G) // g
	write_byte(FLARE_B) // b
	write_byte(51) //life
	write_byte((FLARE_DURATION < 2) ? 3 : 0) //decay rate
	message_end()
	
	// Sparks
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPARKS) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	message_end()
	
	// Decrease task cycle counter
	FLARE_DURATION -= 1;
	
	// Keep sending flare messaegs
	set_task(5.0, "flare_lighting", TASK_NADES, args, sizeof args)
}

// Burning Flames
public burning_flame(args[1], taskid)
{
	// Get player origin and flags
	static Float:originF[3], flags
	pev(ID_BLOOD, pev_origin, originF)
	flags = pev(ID_BLOOD, pev_flags)
	
	// Madness mode - in water - burning stopped
	if (g_nodamage[ID_BLOOD] || (flags & FL_INWATER) || FLAME_DURATION < 1)
	{
		// Smoke sprite
		engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
		write_byte(TE_SMOKE) // TE id
		engfunc(EngFunc_WriteCoord, originF[0]) // x
		engfunc(EngFunc_WriteCoord, originF[1]) // y
		engfunc(EngFunc_WriteCoord, originF[2]-50.0) // z
		write_short(g_smokeSpr) // sprite
		write_byte(random_num(15, 20)) // scale
		write_byte(random_num(10, 20)) // framerate
		message_end()
		
		return;
	}
	
	// Randomly play burning zombie scream sounds (not for nemesis)
	if (!random_num(0, 20) && !g_nemesis[ID_BLOOD])
		engfunc(EngFunc_EmitSound, ID_BLOOD, CHAN_VOICE, grenade_fire_player[random_num(0, sizeof grenade_fire_player - 1)], 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Get fire slow down setting
	static Float:slowdown
	slowdown = get_pcvar_float(cvar_fireslowdown)
	
	// Fire slow down, unless nemesis
	if (slowdown > 0.0 && !g_nemesis[ID_BLOOD] && (flags & FL_ONGROUND))
	{
		static Float:velocity[3]
		pev(ID_BLOOD, pev_velocity, velocity)
		xs_vec_mul_scalar(velocity, slowdown, velocity)
		set_pev(ID_BLOOD, pev_velocity, velocity)
	}
	
	// Get health and fire damage setting
	static health, firedamage
	health = pev(ID_BLOOD, pev_health)
	firedamage = get_pcvar_num(cvar_firedamage)
	
	// Take damage from the fire
	if (health > firedamage)
		fm_set_user_health(ID_BLOOD, health - firedamage)
	
	// Flame sprite
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]+random_float(-5.0, 5.0)) // x
	engfunc(EngFunc_WriteCoord, originF[1]+random_float(-5.0, 5.0)) // y
	engfunc(EngFunc_WriteCoord, originF[2]+random_float(-10.0, 10.0)) // z
	write_short(g_flameSpr) // sprite
	write_byte(random_num(5, 10)) // scale
	write_byte(200) // brightness
	message_end()
	
	// Decrease task cycle counter
	FLAME_DURATION -= 1;
	
	// Keep sending flame messaegs
	set_task(0.2, "burning_flame", taskid, args, sizeof args)
}

// Infection Grenade: Green Blast
create_blast(const Float:originF[3])
{
	// Smallest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(200) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(200) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(200) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
}

// Fire Grenade: Fire Blast
create_blast2(const Float:originF[3])
{
	// Smallest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(200) // red
	write_byte(100) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(200) // red
	write_byte(50) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(200) // red
	write_byte(0) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
}

// Frost Grenade: Freeze Blast
create_blast3(const Float:originF[3])
{
	// Smallest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(100) // green
	write_byte(200) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(100) // green
	write_byte(200) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(100) // green
	write_byte(200) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
}

// Fix Dead Attrib on scoreboard
FixDeadAttrib(id)
{
	message_begin(MSG_BROADCAST, g_msgScoreAttrib)
	write_byte(id) // id
	write_byte(0) // attrib
	message_end()
}

// Send Death Message for infections
SendDeathMsg(attacker, victim)
{
	message_begin(MSG_BROADCAST, g_msgDeathMsg)
	write_byte(attacker) // killer
	write_byte(victim) // victim
	write_byte(1) // headshot flag
	write_string("infection") // killer's weapon
	message_end()
}

// Update Player Frags and Deaths
UpdateFrags(attacker, victim, frags, deaths, scoreboard)
{
	// Set attacker frags
	set_pev(attacker, pev_frags, float(pev(attacker, pev_frags) + frags))
	
	// Set victim deaths
	fm_set_user_deaths(victim, fm_get_user_deaths(victim) + deaths)
	
	// Update scoreboard with attacker and victim info
	if (scoreboard)
	{
		message_begin(MSG_BROADCAST, g_msgScoreInfo)
		write_byte(attacker) // id
		write_short(pev(attacker, pev_frags)) // frags
		write_short(fm_get_user_deaths(attacker)) // deaths
		write_short(0) // class?
		write_short(fm_get_user_team(attacker)) // team
		message_end()
		
		message_begin(MSG_BROADCAST, g_msgScoreInfo)
		write_byte(victim) // id
		write_short(pev(victim, pev_frags)) // frags
		write_short(fm_get_user_deaths(victim)) // deaths
		write_short(0) // class?
		write_short(fm_get_user_team(victim)) // team
		message_end()
	}
}

// Remove Player Frags (when Nemesis/Survivor ignore_frags cvar is enabled)
RemoveFrags(attacker, victim)
{
	// Remove attacker frags
	set_pev(attacker, pev_frags, float(pev(attacker, pev_frags) - 1))
	
	// Remove victim deaths
	fm_set_user_deaths(victim, fm_get_user_deaths(victim) - 1)
}


// Plays a sound on clients
PlaySound(const sound[])
{
	client_cmd(0, "spk ^"%s^"", sound)
}

// Prints a colored message to target (use 0 for everyone), supports ML formatting.
// Note: I still need to make something like gungame's LANG_PLAYER_C to avoid unintended
// argument replacement when a function passes -1 (it will be considered a LANG_PLAYER)
zp_colored_print(target, const message[], any:...)
{
	static buffer[512], i, argscount
	argscount = numargs()
	
	// Send to everyone
	if (!target)
	{
		static player
		for (player = 1; player <= g_maxplayers; player++)
		{
			// Not connected
			if (!is_user_connected(player))
				continue;
			
			// Remember changed arguments
			static changed[5], changedcount // [5] = max LANG_PLAYER occurencies
			changedcount = 0
			
			// Replace LANG_PLAYER with player id
			for (i = 2; i < argscount; i++)
			{
				if (getarg(i) == LANG_PLAYER)
				{
					setarg(i, 0, player)
					changed[changedcount] = i
					changedcount++
				}
			}
			
			// Format message for player
			vformat(buffer, sizeof buffer - 1, message, 3)
			
			// Send it
			message_begin(MSG_ONE, g_msgSayText, _, player)
			write_byte(player)
			write_string(buffer)
			message_end()
			
			// Replace back player id's with LANG_PLAYER
			for (i = 0; i < changedcount; i++)
				setarg(changed[i], 0, LANG_PLAYER)
		}
	}
	
	// Send to specific target
	else
	{
		/*
		// Replace LANG_PLAYER with player id
		for (i = 2; i < argscount; i++)
		{
			if (getarg(i) == LANG_PLAYER)
				setarg(i, 0, target)
		}
		*/
		
		// Format message for player
		vformat(buffer, sizeof buffer - 1, message, 3)
		
		// Send it
		message_begin(MSG_ONE, g_msgSayText, _, target)
		write_byte(target)
		write_string(buffer)
		message_end()
	}
}

/*================================================================================
 [Stocks]
=================================================================================*/

// Set an entity's key value (from fakemeta_util)
stock fm_set_kvd(entity, const key[], const value[], const classname[])
{
	set_kvd(0, KV_ClassName, classname)
	set_kvd(0, KV_KeyName, key)
	set_kvd(0, KV_Value, value)
	set_kvd(0, KV_fHandled, 0)

	dllfunc(DLLFunc_KeyValue, entity, 0)
}

// Set entity's rendering type (from fakemeta_util)
stock fm_set_rendering(entity, fx = kRenderFxNone, r = 255, g = 255, b = 255, render = kRenderNormal, amount = 16)
{
	static Float:color[3]
	color[0] = float(r)
	color[1] = float(g)
	color[2] = float(b)
	
	set_pev(entity, pev_renderfx, fx)
	set_pev(entity, pev_rendercolor, color)
	set_pev(entity, pev_rendermode, render)
	set_pev(entity, pev_renderamt, float(amount))
}

// Get entity's speed (from fakemeta_util)
stock fm_get_speed(entity)
{
	static Float:velocity[3]
	pev(entity, pev_velocity, velocity)
	
	return floatround(vector_length(velocity));
}

// Get entity's aim origins (from fakemeta_util)
stock fm_get_aim_origin(id, Float:origin[3])
{
	static Float:origin1F[3], Float:origin2F[3]
	pev(id, pev_origin, origin1F)
	pev(id, pev_view_ofs, origin2F)
	xs_vec_add(origin1F, origin2F, origin1F)

	pev(id, pev_v_angle, origin2F);
	engfunc(EngFunc_MakeVectors, origin2F)
	global_get(glb_v_forward, origin2F)
	xs_vec_mul_scalar(origin2F, 9999.0, origin2F)
	xs_vec_add(origin1F, origin2F, origin2F)

	engfunc(EngFunc_TraceLine, origin1F, origin2F, 0, id, 0)
	get_tr2(0, TR_vecEndPos, origin)
}

// Find entity by its owner (from fakemeta_util)
stock fm_find_ent_by_owner(entity, const classname[], owner)
{
	while ((entity = engfunc(EngFunc_FindEntityByString, entity, "classname", classname)) && pev(entity, pev_owner) != owner) {}
	
	return entity;
}

// Set player's health (from fakemeta_util)
stock fm_set_user_health(id, health)
{
	(health > 0) ? set_pev(id, pev_health, float(health)) : dllfunc(DLLFunc_ClientKill, id);
}

// Give an item to a player (from fakemeta_util)
stock fm_give_item(id, const item[])
{
	static ent
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, item))
	if (!pev_valid(ent)) return;
	
	static Float:originF[3]
	pev(id, pev_origin, originF)
	set_pev(ent, pev_origin, originF)
	set_pev(ent, pev_spawnflags, pev(ent, pev_spawnflags) | SF_NORESPAWN)
	dllfunc(DLLFunc_Spawn, ent)
	
	static save
	save = pev(ent, pev_solid)
	dllfunc(DLLFunc_Touch, ent, id)
	if (pev(ent, pev_solid) != save)
		return;
	
	engfunc(EngFunc_RemoveEntity, ent)
}

// Strip user weapons (from fakemeta_util)
stock fm_strip_user_weapons(id)
{
	static ent
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "player_weaponstrip"))
	if (!pev_valid(ent)) return;
	
	dllfunc(DLLFunc_Spawn, ent)
	dllfunc(DLLFunc_Use, ent, id)
	engfunc(EngFunc_RemoveEntity, ent)
}

// Collect random spawn points
stock load_spawns()
{
	// Check for CSDM spawns of the current map
	new cfgdir[32], mapname[32], filepath[100], linedata[64]
	get_configsdir(cfgdir, sizeof cfgdir - 1)
	get_mapname(mapname, sizeof mapname - 1)
	formatex(filepath, sizeof filepath - 1, "%s/csdm/%s.spawns.cfg", cfgdir, mapname)
	
	// Load CSDM spawns if present
	if (file_exists(filepath))
	{
		new csdmdata[10][6], file = fopen(filepath,"rt")
		
		while (file && !feof(file))
		{
			fgets(file, linedata, sizeof linedata - 1)
			
			// invalid spawn
			if(!linedata[0] || str_count(linedata,' ') < 2) continue;
			
			// get spawn point data
			parse(linedata,csdmdata[0],5,csdmdata[1],5,csdmdata[2],5,csdmdata[3],5,csdmdata[4],5,csdmdata[5],5,csdmdata[6],5,csdmdata[7],5,csdmdata[8],5,csdmdata[9],5)
			
			// origin
			g_spawns[g_spawnCount][0] = floatstr(csdmdata[0])
			g_spawns[g_spawnCount][1] = floatstr(csdmdata[1])
			g_spawns[g_spawnCount][2] = floatstr(csdmdata[2])
			
			// increase spawn count
			g_spawnCount++
			if (g_spawnCount >= sizeof g_spawns) break;
		}
		if (file) fclose(file)
	}
	else
	{
		// if not, collect regular spawns
		collect_spawns_ent("info_player_start")
		collect_spawns_ent("info_player_deathmatch")
	}
}

// Collect spawn points from entity origins
stock collect_spawns_ent(const classname[])
{
	new ent = -1
	
	while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", classname)) != 0)
	{
		// get origin
		new Float:originF[3]
		pev(ent, pev_origin, originF)
		g_spawns[g_spawnCount][0] = originF[0]
		g_spawns[g_spawnCount][1] = originF[1]
		g_spawns[g_spawnCount][2] = originF[2]
		
		// increase spawn count
		g_spawnCount++
		if (g_spawnCount >= sizeof g_spawns) break;
	}
}

// Drop primary/secondary weapons
stock drop_weapons(id, dropwhat)
{
	// Get user weapons
	static weapons[32], num, i, weaponid
	num = 0 // reset passed weapons count (bugfix)
	get_user_weapons(id, weapons, num)
	
	// Loop through them and drop primaries or secondaries
	for (i = 0; i < num; i++)
	{
		// Prevent re-indexing the array
		weaponid = weapons[i]
		
		if ((dropwhat == 1 && ((1<<weaponid) & PRIMARY_WEAPONS_BIT_SUM)) || (dropwhat == 2 && ((1<<weaponid) & SECONDARY_WEAPONS_BIT_SUM)))
		{
			// Get the weapon entity
			static wname[32], weapon_ent
			get_weaponname(weaponid, wname, sizeof wname - 1)
			weapon_ent = fm_find_ent_by_owner(-1, wname, id);
			
			// Hack: store weapon bpammo on PEV_ADDITIONAL_AMMO
			set_pev(weapon_ent, PEV_ADDITIONAL_AMMO, fm_get_user_bpammo(id, weaponid))
			
			// Player drops the weapon and looses his bpammo
			engclient_cmd(id, "drop", wname)
			fm_set_user_bpammo(id, weaponid, 0)
		}
	}
}

// Stock by (probably) Twilight Suzuka -counts number of chars in a string
stock str_count(const str[], searchchar)
{
	new count, i
	//count = 0
	
	for (i = 0; i <= strlen(str); i++)
	{
		if(str[i] == searchchar)
			count++
	}
	
	return count;
}

// Checks if a space is vacant (credits to VEN)
stock is_hull_vacant(Float:origin[3], hull)
{
	engfunc(EngFunc_TraceHull, origin, origin, 0, hull, 0, 0)
	
	if (!get_tr2(0, TR_StartSolid) && !get_tr2(0, TR_AllSolid) && get_tr2(0, TR_InOpen))
		return true;
	
	return false;
}

// Check if a player is stuck (credits to VEN)
stock is_player_stuck(id)
{
	static Float:originF[3]
	pev(id, pev_origin, originF)
	
	engfunc(EngFunc_TraceHull, originF, originF, 0, (pev(id, pev_flags) & FL_DUCKING) ? HULL_HEAD : HULL_HUMAN, id, 0)
	
	if (get_tr2(0, TR_StartSolid) || get_tr2(0, TR_AllSolid) || !get_tr2(0, TR_InOpen))
		return true;
	
	return false;
}

// Get User BP Ammo
stock fm_get_user_bpammo(id, weapon)
{
	static offset
	
	switch(weapon)
	{
		case CSW_AWP: offset = OFFSET_AWM_AMMO;
		case CSW_SCOUT,CSW_AK47,CSW_G3SG1: offset = OFFSET_SCOUT_AMMO;
		case CSW_M249: offset = OFFSET_PARA_AMMO;
		case CSW_M4A1,CSW_FAMAS,CSW_AUG,CSW_SG550,CSW_GALI,CSW_SG552: offset = OFFSET_FAMAS_AMMO;
		case CSW_M3,CSW_XM1014: offset = OFFSET_M3_AMMO;
		case CSW_USP,CSW_UMP45,CSW_MAC10: offset = OFFSET_USP_AMMO;
		case CSW_FIVESEVEN,CSW_P90: offset = OFFSET_FIVESEVEN_AMMO;
		case CSW_DEAGLE: offset = OFFSET_DEAGLE_AMMO;
		case CSW_P228: offset = OFFSET_P228_AMMO;
		case CSW_GLOCK18,CSW_MP5NAVY,CSW_TMP,CSW_ELITE: offset = OFFSET_GLOCK_AMMO;
		case CSW_FLASHBANG: offset = OFFSET_FLASH_AMMO;
		case CSW_HEGRENADE: offset = OFFSET_HE_AMMO;
		case CSW_SMOKEGRENADE: offset = OFFSET_SMOKE_AMMO;
		case CSW_C4: offset = OFFSET_C4_AMMO;
		default: return -1;
	}
	
	return get_pdata_int(id, offset, OFFSET_LINUX);
}

// Set User BP Ammo
stock fm_set_user_bpammo(id, weapon, amount)
{
	static offset
	
	switch(weapon)
	{
		case CSW_AWP: offset = OFFSET_AWM_AMMO;
		case CSW_SCOUT,CSW_AK47,CSW_G3SG1: offset = OFFSET_SCOUT_AMMO;
		case CSW_M249: offset = OFFSET_PARA_AMMO;
		case CSW_M4A1,CSW_FAMAS,CSW_AUG,CSW_SG550,CSW_GALI,CSW_SG552: offset = OFFSET_FAMAS_AMMO;
		case CSW_M3,CSW_XM1014: offset = OFFSET_M3_AMMO;
		case CSW_USP,CSW_UMP45,CSW_MAC10: offset = OFFSET_USP_AMMO;
		case CSW_FIVESEVEN,CSW_P90: offset = OFFSET_FIVESEVEN_AMMO;
		case CSW_DEAGLE: offset = OFFSET_DEAGLE_AMMO;
		case CSW_P228: offset = OFFSET_P228_AMMO;
		case CSW_GLOCK18,CSW_MP5NAVY,CSW_TMP,CSW_ELITE: offset = OFFSET_GLOCK_AMMO;
		case CSW_FLASHBANG: offset = OFFSET_FLASH_AMMO;
		case CSW_HEGRENADE: offset = OFFSET_HE_AMMO;
		case CSW_SMOKEGRENADE: offset = OFFSET_SMOKE_AMMO;
		case CSW_C4: offset = OFFSET_C4_AMMO;
		default: return;
	}
	
	set_pdata_int(id, offset, amount, OFFSET_LINUX)
}

// Set Weapon Clip Ammo
stock fm_set_weapon_ammo(entity, amount)
{
	set_pdata_int(entity, OFFSET_CLIPAMMO, amount, OFFSET_LINUX_WEAPONS)
}

// Get Weapon Clip Ammo
stock fm_get_weapon_ammo(entity)
{
	return get_pdata_int(entity, OFFSET_CLIPAMMO, OFFSET_LINUX_WEAPONS);
}

// Set User Zoom
stock fm_remove_user_zoom(id)
{
	set_pdata_int(id, OFFSET_ZOOMTYPE, CS_NO_ZOOM, OFFSET_LINUX)
}

// Get User Deaths
stock fm_get_user_deaths(id)
{
	return get_pdata_int(id, OFFSET_CSDEATHS, OFFSET_LINUX);
}

// Set User Deaths
stock fm_set_user_deaths(id, value)
{
	set_pdata_int(id, OFFSET_CSDEATHS, value, OFFSET_LINUX)
}

// Set User NVG for Bots
stock fm_set_bot_nvg(id, toggle)
{
	if (toggle)
	{
		g_nvision[id] = true
		set_pdata_int(id, OFFSET_NVGOGGLES, get_pdata_int(id, OFFSET_NVGOGGLES, OFFSET_LINUX) | HAS_NVGOGGLES, OFFSET_LINUX)
	}
	else
	{
		g_nvision[id] = false
		set_pdata_int(id, OFFSET_NVGOGGLES, get_pdata_int(id, OFFSET_NVGOGGLES, OFFSET_LINUX) &~ HAS_NVGOGGLES, OFFSET_LINUX)
	}
}

// Get User Team
stock fm_get_user_team(id)
{
	return get_pdata_int(id, OFFSET_CSTEAMS, OFFSET_LINUX);
}

// Set a Player's Team
stock fm_set_user_team(id, team)
{
	set_pdata_int(id, OFFSET_CSTEAMS, team, OFFSET_LINUX)
}

// Send User Team Message
public fm_set_user_team_msg(taskid)
{
	// Beware: this message can now be picked up by other metamod
	// plugins (yeah, that includes AMXX plugins as well)
	
	// Set the switching team flag
	g_switchingteam[ID_TEAM] = true
	
	// Tell everyone my new team
	emessage_begin(MSG_ALL, g_msgTeamInfo)
	ewrite_byte(ID_TEAM) // player
	ewrite_string(TEAMNAMES[fm_get_user_team(ID_TEAM)]) // team
	emessage_end()
	
	// Done switching team
	g_switchingteam[ID_TEAM] = false
}

#if defined SET_MODELINDEX_OFFSET
// Set the precached model index (updates hitboxes server side)
stock fm_set_user_model_index(id, value)
{
	set_pdata_int(id, OFFSET_MODELINDEX, value, OFFSET_LINUX)
}
#endif

#if defined HANDLE_MODELS_ON_SEPARATE_ENT
// Set Player Model on Entity
stock fm_set_playermodel_ent(id)
{
	// Make original player entity invisible
	// but without hiding shadows or firing effects
	fm_set_rendering(id, kRenderFxNone, 255, 255, 255, kRenderTransTexture, 1)
	
	// Format model string
	static model[100]
	formatex(model, sizeof model - 1, "models/player/%s/%s.mdl", g_playermodel[id], g_playermodel[id])
	
	// Set model on entity or make a new one if unexistant
	if (!pev_valid(g_ent_playermodel[id]))
	{
		g_ent_playermodel[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
		if (!pev_valid(g_ent_playermodel[id])) return;
		
		set_pev(g_ent_playermodel[id], pev_classname, MODEL_ENT_CLASSNAME)
		set_pev(g_ent_playermodel[id], pev_movetype, MOVETYPE_FOLLOW)
		set_pev(g_ent_playermodel[id], pev_aiment, id)
		set_pev(g_ent_playermodel[id], pev_owner, id)
	}
	
	engfunc(EngFunc_SetModel, g_ent_playermodel[id], model)
}

// Set Weapon Model on Entity
stock fm_set_weaponmodel_ent(id)
{
	// Get player's p_ weapon model
	static model[100]
	pev(id, pev_weaponmodel2, model, sizeof model - 1)
	
	// Set model on entity or make a new one if unexistant
	if (!pev_valid(g_ent_weaponmodel[id]))
	{
		g_ent_weaponmodel[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
		if (!pev_valid(g_ent_weaponmodel[id])) return;
		
		set_pev(g_ent_weaponmodel[id], pev_classname, WEAPON_ENT_CLASSNAME)
		set_pev(g_ent_weaponmodel[id], pev_movetype, MOVETYPE_FOLLOW)
		set_pev(g_ent_weaponmodel[id], pev_aiment, id)
		set_pev(g_ent_weaponmodel[id], pev_owner, id)
	}
	
	engfunc(EngFunc_SetModel, g_ent_weaponmodel[id], model)
}

// Remove Custom Model Entities
stock fm_remove_model_ents(id)
{
	// Remove "playermodel" ent if present
	if (pev_valid(g_ent_playermodel[id]))
	{
		engfunc(EngFunc_RemoveEntity, g_ent_playermodel[id])
		g_ent_playermodel[id] = 0
	}
	// Remove "weaponmodel" ent if present
	if (pev_valid(g_ent_weaponmodel[id]))
	{
		engfunc(EngFunc_RemoveEntity, g_ent_weaponmodel[id])
		g_ent_weaponmodel[id] = 0
	}
}
#else
// Set User Model
public fm_set_user_model(taskid)
{
	set_user_info(ID_MODEL, "model", g_playermodel[ID_MODEL])
}

// Get User Model -model passed byref-
stock fm_get_user_model(player, model[], len)
{
	get_user_info(player, "model", model, len)
}
#endif
