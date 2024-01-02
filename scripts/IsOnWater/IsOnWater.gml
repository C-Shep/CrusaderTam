function IsOnWater(tileX,tileY){
	var watermap_ = objRoomManager.waterTilemap;
	
	if(tilemap_get(watermap_,tileX,tileY)) return true;

	return false;
}