/// @desc 
// Inherit the parent event
event_inherited();

x = floor(objPosSaver.xx/16)*16;
y = floor(objPosSaver.yy/16)*16;

//movement states for animation
states = {
	left: sprTamLeft,
	right: sprTamRight,
	up: sprTamUp,
	down: sprTamDown
}

playerControl = true;

state = states.down;

//instance_create_layer(0,0,"UI",objMenu);