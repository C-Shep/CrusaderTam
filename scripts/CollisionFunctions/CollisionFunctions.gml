function collision(tileX,tileY){
	var tilemap_ = objRoomManager.colTilemap;
	var watermap_ = objRoomManager.waterTilemap;
	
	if(tilemap_get(tilemap_,tileX,tileY)) return true;
	if(tilemap_get(watermap_,tileX,tileY) && !global.boat) return true;
	
	//objects
	var roomX_ = toRoom(tileX);
	var roomY_ = toRoom(tileY);

	if(position_meeting(roomX_,roomY_, objCollision)) return true;
	
	//NPCs
	if(position_meeting(roomX_,roomY_, objCharParent)) return true;

	return false;
}