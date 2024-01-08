/// @desc 
//input

//look in move dir
sprite_index = getSprite(moveDir);

//pause
if(global.paused)
{
	exit;	
}

if(inputX != 0 || inputY != 0)
{
	//if still
	if(!moving)
	{	
		//prefer x to y
		if(inputX != 0) inputY = 0;	
		
		//next pos
		var newTileX_ = toTile(x) + inputX;
		var newTileY_ = toTile(y) + inputY;
		
		//collision
		var col_ = collision(newTileX_, newTileY_);
		
		//Boat Mechanics
		if(IsOnWater(newTileX_,newTileY_))
		{
			moveSpd = 5;		//Speed up on water
		}else{
			//If not sailing into wall & on the boat & on the water
			if(!col_ && global.boat && IsOnWater(toTile(x),toTile(y)))
			{
				//Create the boat to sit where you just were
				global.boatX = x;
				global.boatY = y;
				instance_create_layer(global.boatX,global.boatY,"Instances",objBoat);
				global.boat = false;	// Get off the boat
			}

			moveSpd = 5;
		}
		
		if(!col_)
		{
			targetX = toRoom(newTileX_);// + 0.5);
			targetY = toRoom(newTileY_);//+ 0.5);	
			
			moving = true;
		}else{
			moveDir = point_direction(0,0,inputX,inputY);	
		}
	}
}

//Move
if(moving)
{
	image_speed = 2;
	var dis_ = point_distance(x,y,targetX,targetY);
	
	if(dis_ > moveSpd)
	{
		x += sign(targetX - x) * moveSpd;
		y += sign(targetY - y) * moveSpd;	
		
		moveDir = point_direction(x,y,targetX,targetY);
	}else{
		x = targetX;
		y = targetY;
		moving = false;
	}
}else{
	image_speed = 0;
}

