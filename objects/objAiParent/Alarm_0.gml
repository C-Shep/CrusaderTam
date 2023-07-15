/// @desc Random Movement
if(moves)
{
	var targetX = irandom_range(xstart-moveRange, xstart+moveRange);	
	var targetY = irandom_range(ystart-moveRange, ystart+moveRange);	
	var tileX = toTile(targetX);
	var tileY = toTile(targetY);
	
	moveToPoint(toRoom(tileX),toRoom(tileY));
	
	//Reset Alarm
	alarm[0] = irandom_range(minMoveTime,maxMoveTime);
}