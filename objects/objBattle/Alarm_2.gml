/// @desc finished combat
messageCounter++;
if(!isFleeing)
{
	if(messageCounter > 2 && !global.hasLevelled && !dropDropped)
	{
		Fade(true,true,global.lastRoom);
	}else if(messageCounter > 4 && dropDropped && global.hasLevelled){
		Fade(true,true,global.lastRoom);
	}else if(messageCounter > 3 && ((dropDropped && !global.hasLevelled) || (!dropDropped && global.hasLevelled)))
	{
		Fade(true,true,global.lastRoom);
	}
}else{
		Fade(true,true,global.lastRoom);
}