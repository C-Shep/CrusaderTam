/// @desc 
// Inherit the parent event
event_inherited();

//Open Menu
if(objInput.menuOpen() && !instance_exists(objTextbox) && !instance_exists(objMenu) && !instance_exists(objShop) && !instance_exists(objInn) && room != rmMenu)
{
	instance_create_layer(0,0,"UI",objMenu);
	keyboard_clear(vk_tab);
}

//Control Menu
if(playerControl && startAlarm<=0 && !startTalk)
{
	inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"));
}else{
	inputX = 0;
	inputY = 0;
}

//trust me this is stupid but works
global.hasLevelled = false;