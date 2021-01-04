/*
Wallclimb v1.0f by Python1320
Plagued Version 0.22 by Dabbi

Allows Poison Zombie to Climb Walls in Zombie Plague [3.62]

CVARS:	zp_wallclimb 0 = Off / 1 = Hold USE / 2 = Hold JUMP and DUCK  (Default 1)
	zp_wallclimb_nemesis 0 = Disable wallclimb during nemesis round. / 1 = Enable (Default 1)
	zp_wallclimb_survivor 0 = Disable wallclimb during survivor round. / 1 = Enable (Default 0)
	
Changes:
	0.22
		Made the function wallclimb return a value.
		Put plugin version to a cvar.
	0.21
		Added cvars to enable disable wallclimb durin survivor/nemesis round
	0.2
		Added cvar to enable / disable Walllclimb Plugin
	0.1
		First release.
*/

#include <amxmodx>
// #include <engine>
#include <fakemeta>

#include <cstrike>
#include <zombieplague.inc>

//#include <fakemeta_util>
#define STR_T           33

// Stuff taken from fakemeta_util
#define fm_get_user_button(%1) pev(%1, pev_button)	
/* stock fm_get_user_button(index)
	return pev(index, pev_button) */

#define fm_get_entity_flags(%1) pev(%1, pev_flags)
/* stock fm_get_entity_flags(index)
	return pev(index, pev_flags) */

stock fm_set_user_velocity(entity, const Float:vector[3]) {
	set_pev(entity, pev_velocity, vector);

	return 1;
}
//End of stuff from fakemeta_util
//new STR_T[32]
new bool:g_WallClimb[33]
new Float:g_wallorigin[32][3]
new cvar_zp_wallclimb, cvar_zp_wallclimb_nemesis, cvar_zp_wallclimb_survivor
new g_zclass_climb

// Climb Zombie Atributes
new const zclass_name[] = { "Climb Zombie" } // name
new const zclass_info[] = { "HP-- Speed+ Jump+ Knockback++" } // description
new const zclass_model[] = { "zombie_source" } // model
new const zclass_clawmodel[] = { "v_knife_zombie.mdl" } // claw model
const zclass_health = 1200 // health
const zclass_speed = 260 // speed
const Float:zclass_gravity = 0.8 // gravity
const Float:zclass_knockback = 1.5 // knockback

public plugin_init() 
{
	register_plugin("[ZP] Wallclimb ", "1.0", "WallClimb by Python1320/Cheap_Suit, Plagued by Dabbi")
	register_forward(FM_Touch, 		"fwd_touch")
	register_forward(FM_PlayerPreThink, 	"fwd_playerprethink")
	//register_forward(FM_PlayerPostThink, 	"fwd_playerpostthink")
	register_event("DeathMsg","EventDeathMsg","a")
	//register_cvar("zp_wallclimb_version", PLUGIN_VERSION, FCVAR_SERVER|FCVAR_SPONLY)
	cvar_zp_wallclimb = register_cvar("zp_wallclimb", "1")
	cvar_zp_wallclimb_survivor = register_cvar("zp_wallclimb_survivor", "0")
	cvar_zp_wallclimb_nemesis = register_cvar("zp_wallclimb_nemesis", "1")
	
}

public plugin_precache()
{
	g_zclass_climb = zp_register_zombie_class(zclass_name, zclass_info, zclass_model, zclass_clawmodel, zclass_health, zclass_speed, zclass_gravity, zclass_knockback)
}

public EventDeathMsg()	
{
	new id = read_data(2)
	g_WallClimb[id] = true
	return PLUGIN_HANDLED
}

public client_connect(id) {
	g_WallClimb[id] = true	
}

public fwd_touch(id, world)
{
	if(!is_user_alive(id) || !g_WallClimb[id] || !pev_valid(id))
		return FMRES_IGNORED

	new player = STR_T
	if (!player)
		return FMRES_IGNORED
		
	new classname[STR_T]
	pev(world, pev_classname, classname, (STR_T))
	
	if(equal(classname, "worldspawn") || equal(classname, "func_wall") || equal(classname, "func_breakable"))
		pev(id, pev_origin, g_wallorigin[id])

	return FMRES_IGNORED
}

public wallclimb(id, button)
{
	static Float:origin[3]
	pev(id, pev_origin, origin)

	if(get_distance_f(origin, g_wallorigin[id]) > 25.0)
		return FMRES_IGNORED  // if not near wall
	
	if(fm_get_entity_flags(id) & FL_ONGROUND)
		return FMRES_IGNORED
		
	if(button & IN_FORWARD)
	{
		static Float:velocity[3]
		velocity_by_aim(id, 120, velocity)
		fm_set_user_velocity(id, velocity)
	}
	else if(button & IN_BACK)
	{
		static Float:velocity[3]
		velocity_by_aim(id, -120, velocity)
		fm_set_user_velocity(id, velocity)
	}
	return FMRES_IGNORED
}	

public fwd_playerprethink(id) 
{
	if(!g_WallClimb[id] || !zp_get_user_zombie(id)) 
		return FMRES_IGNORED
		
	if(zp_is_survivor_round() && get_pcvar_num(cvar_zp_wallclimb_survivor) == 0)
		return FMRES_IGNORED
		
	if(zp_is_nemesis_round() && get_pcvar_num(cvar_zp_wallclimb_nemesis) == 0)
		return FMRES_IGNORED
	
	new button = fm_get_user_button(id)
	
	if((get_pcvar_num(cvar_zp_wallclimb) == 1) && (button & IN_USE) && (zp_get_user_zombie_class(id) == g_zclass_climb)) //Use button = climb
	wallclimb(id, button)
	else if((get_pcvar_num(cvar_zp_wallclimb) == 2) && (button & IN_JUMP) && button & IN_DUCK && (zp_get_user_zombie_class(id) == g_zclass_climb)) //Jump + Duck = climb
	wallclimb(id, button)

	return FMRES_IGNORED
}
