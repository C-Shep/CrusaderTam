/// @desc init vars

player = objStats.playerStats;

//Normal Menu
choice[0] = "Spells"
choice[1] = "Inventory"
choice[2] = "Equip"
choice[3] = "Stats"
choiceLength = array_length(choice);
selected = 0;
control = true;

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

//check everything in the inv and see if they are equipment
//then add them to a equipment list
for(var i=0;i<invLength;i++)
{
	for(var j = 0; j<ds_list_size(objEquipment.equipment);j++)
	{
		var currentInvItem = ds_list_find_value(inv,i);
		var e = objEquipment.equipment;
		var eName = ds_list_find_value(e,j).name_;
		if(currentInvItem == eName)
		{
			ds_list_add(equip,currentInvItem);
		}
	}
}

equipLength = ds_list_size(equip);
equipSelected = 0;
equipControl = false;

//Stats
statsControl = false;

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

displayEquipment = function(statMsg,descMsg)
{
	draw_text_transformed_colour(
	messageX,
	messageY,
	statMsg,
	textSize,
	textSize,
	0,
	colour,colour,colour,colour,1);
	
	draw_text_ext_transformed_colour(
	messageX,
	messageY+48,
	descMsg,
	12,
	200,
	textSize,
	textSize,
	0,
	colour,colour,colour,colour,1);
}

playerHeal = function (healNum){
	player.hp += healNum;
	return healNum;
}

playerRestore = function (restoreNum){
	player.mp += restoreNum;
	return restoreNum;
}




