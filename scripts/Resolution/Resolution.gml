global.res = {
	width : 320,
	height : 180,
	scale: 4
}

var width_ = global.res.width * global.res.scale;
var height_ = global.res.height * global.res.scale;

surface_resize(application_surface, width_, height_);

window_set_size(width_,height_);
display_set_gui_size(width_,height_);

var displayWidth_ = display_get_width();
var displayHeight_ = display_get_height();

window_set_position(
	displayWidth_ /2 - width_ /2,
	displayHeight_ /2 - height_ /2
);