function collision(tileX,tileY){
	var tilemap_ = objRoomManager.colTilemap;
	var watermap_ = objRoomManager.waterTilemap;
	
	//Room X & Y
	var roomX_ = toRoom(tileX);
	var roomY_ = toRoom(tileY);
	
	//Tilemaps
	if(tilemap_get(tilemap_,tileX,tileY)) return true;
	if(tilemap_get(watermap_,tileX,tileY) && !global.boat) return true;

	//Collide with boat
	if(position_meeting(roomX_,roomY_, objBoat) && global.boat)
	{
		instance_destroy(objBoat);
	}
	
	//Objects
	if(position_meeting(roomX_,roomY_, objCollision)) return true;
	
	//NPCs
	if(position_meeting(roomX_,roomY_, objCharParent)) return true;
	


	return false;
}