/// @desc 
var len = TILE_SIZE
var dir_ = moveDir;

var facingCellX = x+lengthdir_x(len,dir_);
var facingCellY = y+lengthdir_y(len,dir_);
var npc = instance_position(facingCellX,facingCellY,objNpcParent);
npc.moveDir = 0;