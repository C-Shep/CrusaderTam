/// @desc 
// Inherit the parent event
event_inherited();

//Open Menu
if(keyboard_check_pressed(vk_tab) && !instance_exists(objMenu) && !instance_exists(objShop))
{
	instance_create_layer(0,0,"UI",objMenu)
	keyboard_clear(vk_tab);
}

//DEBUG Open Shop
if(keyboard_check_pressed(vk_space) && !instance_exists(objShop))
{
	var shop = instance_create_layer(0,0,"UI",objShop)
	ds_list_add(shop.stock,"Herb");
	ds_list_add(shop.stock,"Weed");
	ds_list_add(shop.stock,"Sword");
	keyboard_clear(vk_space);
}

if(playerControl)
{
	inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"));
}else{
	inputX = 0;
	inputY = 0;
}

//trust me this is stupid but works
global.hasLevelled = false;