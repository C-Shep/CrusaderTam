/// @desc finished combat
messageCounter++;
if(messageCounter > 2 && !global.hasLevelled && !dropDropped)
{
	Fade(true,true,rmTest);
}else if(messageCounter > 4 && dropDropped && global.hasLevelled){
	Fade(true,true,rmTest);
}else if(messageCounter > 3 && ((dropDropped && !global.hasLevelled) || (!dropDropped && global.hasLevelled)))
{
	Fade(true,true,rmTest);
}