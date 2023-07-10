/// @desc init vars

player = objStats.playerStats;

//Normal Menu
choice[0] = "Spells"
choice[1] = "Inventory"
choice[2] = "Equip"
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

//Equip Menu
equip = ds_list_create();

for(var i=0;i<invLength;i++)
{
	//this is aweful but i kinda coded myself into a corner here
	var currentInvItem = ds_list_find_value(inv,i);
	switch(currentInvItem)
	{
		case "Sword":
		case "Shield":
		case "Chainmail":
		case "Amulet":
			ds_list_add(equip,currentInvItem);
			break;
	}
}

equipLength = ds_list_size(equip);
equipSelected = 0;
equipControl = false;

weaponPlace = noone;
armourPlace = noone;
shieldPlace = noone;
trinketPlace = noone;

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



