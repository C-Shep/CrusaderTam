function getArea(tileX,tileY){
	//objects
	var roomX_ = toRoom(tileX);
	var roomY_ = toRoom(tileY);
	
	var currentArea = instance_position(roomX_,roomY_, objEncounterArea);
	
	if(currentArea != noone)
	{
		return currentArea;
	}
	
	return noone;
}