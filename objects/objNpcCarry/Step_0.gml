/// @desc 
// Inherit the parent event
event_inherited();

//change to repeat dialogue after giving scarf in Valiburgh
if(room == rmValiburghInside)
{ 
	if(objStats.findItem("Letter"))
	{
		dialog = global.dialog.carryFound;
		global.quest.carryFound = true;
		global.quest.carryTalked = false;
	}

	if(!global.quest.carryFound)
	{
		dialog = global.dialog.carryHelp;
	}
	else if(global.quest.carryTalked){
		dialog = global.dialog.carryChat;
	}
	
	
	if(global.quest.carryTalked == false && global.quest.carryFound == true) {
		dialog = global.dialog.carryFound;
	}
}