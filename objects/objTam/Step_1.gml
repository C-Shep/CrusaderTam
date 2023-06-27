/// @desc 
// Inherit the parent event
event_inherited();

if(playerControl)
{
	inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"));
}else{
	inputX = 0;
	inputY = 0;
}