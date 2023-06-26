function PlayerMove(dir){
	
	//directions
	var components_ = global.components[dir];
	var dx = components_[0];
	var dy = components_[1];
	
	//Move right
	if(state == states.idle)
	{
		if(!tilemap_get(tileMap,xPos+dx,yPos+dy))
		{
			xFrom = xPos;
			yFrom = yPos;

			xTo = xPos + dx;
			yTo = yPos + dy;
		
			xPos = xTo;
			yPos = yTo;
		
			state = states.walking;
			sprite_index = sprite[dir];
		}
	}
}