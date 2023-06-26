/// @desc 
var w_ = global.res.width;
var h_ = global.res.height;

cam = camera_create_view(0,0,w_,h_,0,objTam,-1,-1,w_/2,h_/2);

view_enabled = true;
view_visible[0] = true;

view_set_camera(0,cam);

colTilemap = layer_tilemap_get_id("Walls");