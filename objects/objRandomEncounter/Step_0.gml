// @desc random encounter code
if(objTam.moving)
{
	timer+=1*dt;
}

tam = objTam;

//encounter based on tile
var currentTileX_ = toTile(tam.x);
var currentTileY_ = toTile(tam.y);
		



if(timer>=setTime)
{

	var currentArea_ = getArea(currentTileX_, currentTileY_);
	
	if(currentArea_ != noone)
	{
		//Set current area
		global.area = currentArea_.areaType;
		
		//Go to Battle
		show_debug_message("Random Encounter");
		room_goto(rmBattle);
	}
	
	//Reset Random Encounter Timer
	timer = 0;
	setTime = irandom_range(2, 6);
}