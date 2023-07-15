/// @desc  Inherit the parent event
event_inherited();

//Follow AI Path
if(pathNextPoint > 0)
{
	pathPointX = floor(path_get_point_x(path,pathNextPoint)/16)*16;
	pathPointY = floor(path_get_point_y(path,pathNextPoint)/16)*16;
	
	inputX = sign(pathPointX-x);
	inputY = sign(pathPointY-y);
}
else
{
	inputX = 0;
	inputY = 0;
}

