/// @desc finished combat
messageCounter++;
if(!isFleeing)
{
	if(messageCounter > 2 && !global.hasLevelled && !dropDropped || player.hp <= 0)
	{
		//died
		if(player.hp <= 0){
			Fade(true,true,global.respawnRoom);
		}else{
			Fade(true,true,global.lastRoom);
		}
		
	}else if(messageCounter > 4 && dropDropped && global.hasLevelled){
		Fade(true,true,global.lastRoom);
	}else if(messageCounter > 3 && ((dropDropped && !global.hasLevelled) || (!dropDropped && global.hasLevelled)))
	{
		Fade(true,true,global.lastRoom);
	}
}else{
		Fade(true,true,global.lastRoom);
}