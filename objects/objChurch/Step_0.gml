if(global.paused)
{
	exit;	
}

#region //Close Menu
if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_right))
{
	control = false;
	selected = 0;
	instance_destroy();
}
#endregion

if(control)
{
	//Lock Player
	objTam.playerControl = false;
	
	#region//Scroll Control for Normal
			
	if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
	{
		selected += 1;
	}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
		selected -= 1;
	}
	
	selected = clamp(selected, 0,choiceLength-1);
	#endregion
	
	#region//Normal Control
	if(mouse_check_button_pressed(mb_left) && player.currentGld >= cost)
	{
		switch(choice[selected])
		{
			case "Rest":
				player.hp = player.maxhp;
				player.mp = player.maxmp;
				player.currentGld -= cost;
				Fade(false,true,rmTest,true);
				control = false;
				selected = 0;
				mouse_clear(INTERACT);
				instance_destroy();
				break;
		}
	}
	#endregion
}
