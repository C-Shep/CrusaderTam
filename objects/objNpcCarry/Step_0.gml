/// @desc 
// Inherit the parent event
event_inherited();

/*/change to repeat dialogue after giving scarf in Valiburgh
if(room == rmValiburghInside)
{ 
	if(objStats.findItem("Letter"))
	{
		dialog = global.dialog.postinoFound;
		global.quest.postinoFound = true;
		global.quest.postinoTalked = false;
	}

	if(!global.quest.postinoFound)
	{
		dialog = global.dialog.postinoHelp;
	}
	else if(global.quest.postinoTalked){
		dialog = global.dialog.postinoChat;
	}
	
	
	if(global.quest.postinoTalked == false && global.quest.postinoFound == true) {
		dialog = global.dialog.postinoFound;
	}
}