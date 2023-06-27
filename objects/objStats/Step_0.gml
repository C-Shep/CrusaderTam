/// @desc important stuff mostly about levelling
//Levelling Up Algorithm
function nextLevel(level)
{
	var exponent = 1.5;
	var baseXp = 10;
	return floor(baseXp*(power(level,exponent)));
}

//Level up
if(playerStats.currentXp > nextLevel(playerStats.lvl))
{
	playerStats.lvl++;
}

//Keep hp & mp clamped
if(playerStats.hp > playerStats.maxhp) playerStats.hp = playerStats.maxhp;
if(playerStats.mp > playerStats.maxmp) playerStats.mp = playerStats.maxmp;

//Learing Spells From Levelling Up
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

if(keyboard_check_pressed(ord("F")))
{
	playerStats.lvl++;
}