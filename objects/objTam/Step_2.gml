/// @desc 
var len = TILE_SIZE
var dir_ = moveDir;

var facingCellX = x+lengthdir_x(len,dir_);
var facingCellY = y+lengthdir_y(len,dir_);

//Check for an npc
var npc = instance_position(facingCellX,facingCellY,objNpcParent);

if(npc != noone && !instance_exists(objTextbox) && playerControl)
{
	npc.showMessageIcon = true;
	
	if(mouse_check_button_pressed(INTERACT))
	{
		//make npc face the player
		npc.moveDir = point_direction(npc.x,npc.y,x,y);
		createTextbox(npc.dialog);	
	}
}