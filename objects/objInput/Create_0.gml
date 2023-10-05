/// @desc 
interact = function()
{	
	var interactButton = mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
	return interactButton;
}

cancel = function()
{	
	var interactButton = mouse_check_button_pressed(mb_right) || keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace);
	return interactButton;
}

menuOpen = function()
{	
	var interactButton = keyboard_check_pressed(vk_tab);
	return interactButton;
}

inputClear = function()
{	
	mouse_clear(mb_left);
	keyboard_clear(vk_enter);
	keyboard_clear(vk_space);
}