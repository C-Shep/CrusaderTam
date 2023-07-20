/// @desc 
//player and enemy
listLength = array_length(objEnemyList.list);
randomNum = irandom_range(0,listLength-1);
enemy = objEnemyList.list[randomNum];
player = objStats.playerStats;

//phases of combat
isEnemyTurn = false;
combatEnd = false;
endMessages = false;

//coords for messages
messageX = 16;
messageY = 16;

//Initiative
randomSpeedEnemy = irandom_range(0,99)+enemy.spd;
randomSpeedPlayer = irandom_range(0,99)+player.spd;

if(randomSpeedEnemy > randomSpeedPlayer)
{
	isEnemyTurn = true;	
	control = false;
}

//Defending
isDefending = false;
totalDefence = player.def;

//Fleeing
isFleeing = false;

//Damage Numbers
enemyDamage = 0;

//For final messages
messageCounter = 0;

//Combat Menu
menu[0] = "Attack";
menu[1] = "Spells";
menu[2] = "Items";
menu[3] = "Defend";
menu[4] = "Flee";
menuLength = array_length(menu);
menuX = 16;
menuY = 16;
menuHeight = 16;
colour = c_white;
control = true;
selected = 0;

//Battle Rewards
rewardsGiven = false; //has the battle rewards like gold n shit been given yet?
dropChance = 5; //percent chance out of 100, probably do something more interesting with this
dropDropped = false; //has the drop dropped? will the player get the item is what i mean

//Spells
spell = objStats.playerSpell;
spellLength = array_length(spell);
spellSelected = 0;
spellControl = false;

//Attack Shader
hitEnemy = 0;

//Inventory
inv = objStats.inv;
invLength = ds_list_size(inv);
invSelected = 0;
invControl = false;

//What message will be displayed
actionMessage = "";

//Fade into battle
Fade(false,false,rmTest);

//Functions

//player or enemy dead? end combat
checkForEnd = function (){
	if(enemy.hp <= 0 || player.hp <= 0)
	{
		combatEnd = true;
	}
}

combatMessage = function (msg){
	draw_text_colour(
	messageX,
	messageY,
	msg,
	colour,colour,colour,colour,1);
}

playerAttack = function (bonus){
	var dmg = round((player.atk+bonus) - (round(enemy.def/2))/2)
	enemy.hp -= dmg;
	alarm[1] = 60;
	spellControl = false;
	invControl = false;
	control = false;
	
	hitEnemy = 6;
	
	return dmg;
}

playerHeal = function (healNum){
	player.hp += healNum;
	alarm[1] = 60;
	spellControl = false;
	invControl = false;
	control = false;
	return healNum;
}

playerRestore = function (restoreNum){
	player.mp += restoreNum;
	alarm[1] = 60;
	spellControl = false;
	invControl = false;
	control = false;
	return restoreNum;
}

playerFlee = function()
{
	var randomFleeEnemy = irandom_range(0,99)+enemy.spd;
	var randomFleePlayer = irandom_range(0,99)+player.spd;

	if(randomFleePlayer >= randomFleeEnemy)
	{
		isFleeing = true;
		alarm[2] = 120;
	}
	
	return isFleeing;
}	