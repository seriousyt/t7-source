// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\codescripts\struct;
#using scripts\shared\system_shared;
#using scripts\zm\_zm_powerups;

#namespace zm_powerup_free_perk;

/*
	Name: __init__sytem__
	Namespace: zm_powerup_free_perk
	Checksum: 0x5561A317
	Offset: 0xF0
	Size: 0x34
	Parameters: 0
	Flags: AutoExec
*/
autoexec function __init__sytem__()
{
	system::register("zm_powerup_free_perk", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: zm_powerup_free_perk
	Checksum: 0xBA800786
	Offset: 0x130
	Size: 0x34
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	zm_powerups::include_zombie_powerup("free_perk");
	zm_powerups::add_zombie_powerup("free_perk");
}
