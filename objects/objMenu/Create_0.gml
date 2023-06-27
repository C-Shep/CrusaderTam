/// @desc init vars

player = objStats.playerStats;

//Normal Menu
choice[0] = "Spells"
choice[1] = "Inventory"
choiceLength = array_length(choice);
selected = 0;
control = false;

//Spells
spell = objStats.playerSpell;
spellLength = array_length(spell);
spellSelected = 0;
spellControl = false;

//Inventory
inv = objStats.inv;
invLength = ds_list_size(inv);
invSelected = 0;
invControl = false;

//Coords and Sizes
menuX = 16;
menuY = 16;
menuHeight = 64;
textSize = 4;

//Colour
colour = c_white;

//Messages
messageX = 416;
messageY = 80;
actionMessage = "";
currentlyDisplaying = false;
startDisplayTimer = true;


//Functions
displayMessage = function (msg){
	draw_text_transformed_colour(
	messageX,
	messageY,
	msg,
	textSize,
	textSize,
	0,
	colour,colour,colour,colour,1);
}

playerHeal = function (healNum){
	player.hp += healNum;
	return healNum;
}



