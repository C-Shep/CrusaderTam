#macro TILE_WIDTH 16
#macro TILE_HEIGHT 16
#macro TILE_SIZE 16
#macro dt delta_time/1000000
#macro INTERACT mb_left
	
enum directions{
	RIGHT,
	UP,
	LEFT,
	DOWN
}
	
global.components = [];
global.components[directions.RIGHT] = [1,0];
global.components[directions.UP] = [0,-1];
global.components[directions.LEFT]= [-1,0];
global.components[directions.DOWN]= [0,1];