playerStats = {
	hp:10,
	maxhp:10,
	mp:10,
	maxmp:10,
	lvl:1,
	atk:3, //default 3
	baseAtk:3,
	def:1,
	baseDef:1,
	spd:16,
	currentXp:0,
	currentGld:0
}

//Stats have changed from equipment
oldWeapon = global.weaponE;
oldShield = global.shieldE;
oldArmour = global.armourE;
oldTrinket = global.trinketE;


//Player learns heal at lvl 1
playerSpell[0] = "Heal";

//Inventory
inv = ds_list_create();
ds_list_add(inv,"Herb");
ds_list_add(inv,"Sword");
ds_list_add(inv,"Herb");
ds_list_add(inv,"Shield");
ds_list_add(inv,"Gun");
ds_list_add(inv,"Love");
ds_list_add(inv,"Man");
ds_list_add(inv,"Weed");
ds_list_add(inv,"Love");
ds_list_add(inv,"Herb");
ds_list_add(inv,"Spear");
ds_list_add(inv,"Chainmail");
ds_list_add(inv,"Amulet");