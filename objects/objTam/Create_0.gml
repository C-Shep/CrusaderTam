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

state = states.down;