/// @desc important stuff mostly about levelling
//Levelling Up Algorithm
function nextLevel(level)
{
	var exponent = 1.5;	//normal is 1.5
	var baseXp = 10;	//normal is 10
	return floor(baseXp*(power(level,exponent)));
}

//Level up
if(playerStats.currentXp > nextLevel(playerStats.lvl))
{
	show_debug_message(nextLevel(playerStats.lvl+1));
	playerStats.baseAtk+=1;
	playerStats.baseSpd+=1;
	//Removed defence up, might find another solution later
	var hpIncrease = irandom_range(2,3);
	var mpIncrease = irandom_range(2,3);
	playerStats.hp+=hpIncrease;
	playerStats.mp+=mpIncrease;
	playerStats.maxhp+=hpIncrease;
	playerStats.maxmp+=mpIncrease;
	playerStats.lvl++;
	global.hasLevelled = true;//for the levlling up message (set false in player begins step)
}

//Keep hp & mp clamped
if(playerStats.hp > playerStats.maxhp) playerStats.hp = playerStats.maxhp;
if(playerStats.mp > playerStats.maxmp) playerStats.mp = playerStats.maxmp;

//Attack and Defence and Speed updates for Equipping stuff, where final atk stat is calculated
playerStats.atk = playerStats.baseAtk;
playerStats.def = playerStats.baseDef;
playerStats.spd = playerStats.baseSpd;

for(var j = 0; j<ds_list_size(objEquipment.equipment);j++)
{
	var e = objEquipment.equipment;
	var eCurrent =  ds_list_find_value(e,j);
	var eName = eCurrent.name_;
	
	#region Weapons
	if(global.weaponE != noone && global.weaponE == eName)
	{
		playerStats.atk += eCurrent.atk;
		playerStats.def += eCurrent.def;
		playerStats.spd += eCurrent.spd;
	}

	#endregion
	
	#region Armour
	if(global.armourE != noone && global.armourE == eName)
	{
		playerStats.atk += eCurrent.atk;
		playerStats.def += eCurrent.def;
		playerStats.spd += eCurrent.spd;
	}
	#endregion
	
	#region Shield
	if(global.shieldE != noone && global.shieldE == eName)
	{
		playerStats.atk += eCurrent.atk;
		playerStats.def += eCurrent.def;
		playerStats.spd += eCurrent.spd;
	}
	#endregion
	
	#region Trinket
	if(global.trinketE != noone && global.trinketE == eName)
	{
		playerStats.atk += eCurrent.atk;
		playerStats.def += eCurrent.def;
		playerStats.spd += eCurrent.spd;
	}
	#endregion
}

//Learing Spells From Levelling Up
if(playerStats.lvl >= 1)
{
	playerSpell[0] = "Heal";
}

if(playerStats.lvl >= 2)
{
	playerSpell[1] = "Scorch";
}

if(playerStats.lvl >= 3)
{
	playerSpell[2] = "Freeze";
}

if(playerStats.lvl >= 4)
{
	playerSpell[3] = "Counter";
}

if(playerStats.lvl >= 5)
{
	playerSpell[4] = "Crucify";
}

//Automatically use healing items when over threshold
invLength = ds_list_size(inv);
healCount = 0;

//for(var i=0;i<invLength;i++)
//{
//	var itemName = ds_list_find_value(inv, i);
//	if(itemName == "Herb") 
//}

if(findItem("Herb")) healCount++;

//DEBUG TAKE THIS OUT LATER
if(keyboard_check_pressed(ord("F")))
{
	playerStats.lvl++;
}

