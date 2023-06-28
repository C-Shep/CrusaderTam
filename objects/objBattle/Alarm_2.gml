/// @desc finished combat
messageCounter++;
if(messageCounter > 2 && !global.hasLevelled && !dropDropped)
{
	room_goto(rmTest);
}else if(messageCounter > 4 && dropDropped && global.hasLevelled){
	room_goto(rmTest);
}else if(messageCounter > 3 && ((dropDropped && !global.hasLevelled) || (!dropDropped && global.hasLevelled)))
{
	room_goto(rmTest);
}