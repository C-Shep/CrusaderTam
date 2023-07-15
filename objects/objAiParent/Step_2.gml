/// @desc Reached final point
if(pathNextPoint > 0 && x == pathPointX && y == pathPointY)
{
	//next point in path
	pathNextPoint++;
	
	//path is over
	if(pathNextPoint>=path_get_number(path))
	{
		pathNextPoint=0;
	}
}