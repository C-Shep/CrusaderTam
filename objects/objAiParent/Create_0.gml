/// @desc Inherit the parent event
event_inherited();

//Random Movement
alarm[0] = 1;

//Path
path = path_add();
pathNextPoint = 0;

pathPointX = 0;
pathPointY = 0;

//Find Path To Point
moveToPoint = function (targetX,targetY)
{
	var canMove = mp_grid_path(global.AIGrid,path,x,y,targetX,targetY,false);
	
	if(canMove)
	{
		pathNextPoint = 1;
		
		pathPointX = 0;
		pathPointY = 0;
	}
}