/// @desc 
inputX = 0;
inputY = 0;

moveSpd = 5;

moving = false;

targetX = x;
targetY = y;

//Functions
getSprite = function (dir){
	if(dir == 0) return states.right;
	if(dir == 90) return states.up;
	if(dir == 180) return states.left;
	if(dir == 270) return states.down;
	
	return sprite_index;
}

