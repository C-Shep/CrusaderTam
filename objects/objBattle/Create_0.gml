/// @desc 
//player and enemy
listLength = ds_list_size(objEnemyList.list);

randomNum = irandom_range(0,listLength-1);
enemy = ds_list_find_value(objEnemyList.list, randomNum);
ds_list_clear(objEnemyList.list);

player = objStats.playerStats;
oldHp = player.hp;

//phases of combat
isEnemyTurn = false;
combatEnd = false;
endMessages = false;

//coords for messages
messageX = 16;
messageY = 16;

//Status
sleep = false;

//Elements
attackElement = "Basic";

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
baseColour = c_white;
hurtColour = c_orange;
control = true;
selected = 0;
textSize = 1;

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
Fade(false,false,global.lastRoom);

//Enemy Moves
numberOfMoves = ds_list_size(enemy.moves);

//Functions

//player or enemy dead? end combat
checkForEnd = function (){
	if(enemy.hp <= 0 || player.hp <= 0)
	{
		combatEnd = true;
	}
}

combatMessage = function (msg){
	draw_text_transformed_colour(
	messageX,
	messageY,
	msg,
	textSize,
	textSize,
	0,
	colour,colour,colour,colour,1);
}

playerAttack = function (bonus,multi=1,element_="None"){
	
	var elementMultiplier = 1;
	if(element_ == enemy.weak) elementMultiplier = 1.3;
	show_debug_message("Damage before defence:" + string(ceil(((player.atk+bonus)*multi))));
	var dmg = max(ceil(((player.atk+bonus)*multi*elementMultiplier) - (floor(enemy.def/2))),1);
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
	if(enemy.name_ != "Barghest")
	{
		var randomFleeEnemy = irandom_range(0,99)+enemy.spd;
		var randomFleePlayer = irandom_range(0,99)+player.spd;

		if(randomFleePlayer >= randomFleeEnemy)
		{
			isFleeing = true;
			alarm[2] = 120;
		}
	}else{
		isFleeing = false;	
	}
	
	return isFleeing;
}	

enemyBasicAttack = function(bonus)
{	
	var dmgNum = max((round(enemy.atk+bonus)) - (round(totalDefence/2)),1);
	return dmgNum;
}