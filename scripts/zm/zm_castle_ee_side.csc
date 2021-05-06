// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace zm_castle_ee_side;

/*
	Name: __init__sytem__
	Namespace: zm_castle_ee_side
	Checksum: 0xCC1194B6
	Offset: 0x308
	Size: 0x34
	Parameters: 0
	Flags: AutoExec
*/
autoexec function __init__sytem__()
{
	system::register("zm_zod_ee_side", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: zm_castle_ee_side
	Checksum: 0x9E99A542
	Offset: 0x348
	Size: 0x154
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	level._effect["clocktower_flash"] = "dlc1/castle/fx_lightning_strike_weathervane";
	level._effect["exploding_death"] = "dlc1/zmb_weapon/fx_ee_plunger_teleport_impact";
	clientfield::register("world", "clocktower_flash", 5000, 1, "counter", &clocktower_flash, 0, 0);
	clientfield::register("world", "sndUEB", 5000, 1, "int", &sndueb, 0, 0);
	clientfield::register("actor", "plunger_exploding_ai", 5000, 1, "int", &callback_exploding_death_fx, 0, 0);
	clientfield::register("toplayer", "plunger_charged_strike", 5000, 1, "counter", &plunger_charged_strike, 0, 0);
}

/*
	Name: clocktower_flash
	Namespace: zm_castle_ee_side
	Checksum: 0x8665134F
	Offset: 0x4A8
	Size: 0x9C
	Parameters: 7
	Flags: Linked
*/
function clocktower_flash(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump)
{
	var_1f1c6e96 = struct::get("ee_clocktower_lightning_rod", "targetname");
	playfx(localclientnum, level._effect["clocktower_flash"], var_1f1c6e96.origin);
}

/*
	Name: sndueb
	Namespace: zm_castle_ee_side
	Checksum: 0xCF7258A2
	Offset: 0x550
	Size: 0xEC
	Parameters: 7
	Flags: Linked
*/
function sndueb(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump)
{
	if(newval)
	{
		playsound(0, "zmb_pyramid_energy_ball_start", (-1192, 2256, 320));
		audio::playloopat("zmb_pyramid_energy_ball_lp", (-1192, 2256, 320));
	}
	else
	{
		playsound(0, "zmb_pyramid_energy_ball_end", (-1192, 2256, 320));
		audio::stoploopat("zmb_pyramid_energy_ball_lp", (-1192, 2256, 320));
	}
}

/*
	Name: callback_exploding_death_fx
	Namespace: zm_castle_ee_side
	Checksum: 0xF12D3C0E
	Offset: 0x648
	Size: 0x0
	Parameters: 7
	Flags: Linked
*/
function callback_exploding_death_fx()
{
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at System.Collections.Generic.List`1.get_Item(Int32 index)
   at Cerberus.Logic.Decompiler.FindElseIfStatements() in D:\Modding\Call of Duty\t89-dec\Cerberus.Logic\Decompiler\Decompiler.cs:line 649
   at Cerberus.Logic.Decompiler..ctor(ScriptExport function, ScriptBase script) in D:\Modding\Call of Duty\t89-dec\Cerberus.Logic\Decompiler\Decompiler.cs:line 211
/*
No Output
*/

	/* ======== */

/* 
	Stack: 
*/
	/* ======== */

/* 
	Blocks: 
	Cerberus.Logic.BasicBlock at 0x0648, end at 0x0649
	Cerberus.Logic.IfBlock at 0x069A, end at 0x0782
*/
	/* ======== */

}

/*Unknown Op Code (0x023D) at 0766*/
/*
	Name: plunger_charged_strike
	Namespace: zm_castle_ee_side
	Checksum: 0xDBEED443
	Offset: 0x790
	Size: 0x9C
	Parameters: 7
	Flags: Linked
*/
function plunger_charged_strike(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump)
{
	playviewmodelfx(localclientnum, level._effect["plunger_charge_1p"], "tag_fx");
	playfxontag(localclientnum, level._effect["plunger_charge_3p"], self, "tag_fx");
}

