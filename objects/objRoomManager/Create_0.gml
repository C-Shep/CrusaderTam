/// @desc 
var w_ = global.res.width;
var h_ = global.res.height;

cam = camera_create_view(0,0,w_,h_,0,objTam,-1,-1,w_/2,h_/2);

view_enabled = true;
view_visible[0] = true;

view_set_camera(0,cam);

colTilemap = layer_tilemap_get_id("Walls");

//Create Grid
var gridWidth = toTile(room_width);
var gridHeight = toTile(room_height);
global.AIGrid = mp_grid_create(0,0,gridWidth,gridHeight,TILE_SIZE,TILE_SIZE);

mp_grid_add_instances(global.AIGrid,objCollision,false);

//Add Tiles for the Grid
for(var xx=0;xx<gridWidth;xx++)
{
	for(var yy=0;yy<gridHeight;yy++)
	{
		var col=tilemap_get(colTilemap,xx,yy);
		if(col) mp_grid_add_cell(global.AIGrid,xx,yy);
	}
}