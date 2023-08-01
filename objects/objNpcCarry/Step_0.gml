/// @desc 
// Inherit the parent event
event_inherited();

//change to repeat dialogue after giving scarf in Valiburgh
if(room == rmValiburghInside)
{ 
	if(!global.quest.carryFound)
	{
		dialog = global.dialog.carryHelp;
	}
	else if(global.quest.carryTalked)
	{
		dialog = global.dialog.carryChat;
	}
	else
	{
		dialog = global.dialog.carryFound;
	}
}