/// @desc 
if(objStats.playerStats.hp <= 0)
{
	xx = global.respawnX;
	yy = global.respawnY;
}
else if(instance_exists(follow))
{
	if(!position_meeting(follow.x,follow.y, objDoor))
	{
		xx = follow.x;
		yy = follow.y;
	}else{
		xx = global.lastX;
		yy = global.lastY;

	}	
}