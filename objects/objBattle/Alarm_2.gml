/// @desc finished combat
messageCounter++;
if(messageCounter > 2 && !global.hasLevelled)
{
	room_goto(rmTest);
}else if(messageCounter > 3){
	room_goto(rmTest);
}