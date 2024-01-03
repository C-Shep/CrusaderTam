function toTile(val){
	return (val div TILE_SIZE);
}

function toRoom(val){
	return (val * TILE_SIZE);
}

function floorToTile(val){
	return floor(val / TILE_SIZE) * TILE_SIZE;
}