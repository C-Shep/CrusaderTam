// @desc random encounter code
//might change this to only when touching an encounter area?
if(objTam.moving && !global.paused)
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
	
	if(currentArea_ != noone && !global.boat)
	{
		//Set current area
		global.area = currentArea_.areaType;
		
		//Go to Battle
		show_debug_message("Random Encounter");
		
		//save the room
		global.lastRoom = room;
		
		//start each room with a fade in
		Fade(true,true,rmBattle);
	}	
	
	//Reset Random Encounter Timer
	timer = 0;
	setTime = irandom_range(minTime, maxTime);
}