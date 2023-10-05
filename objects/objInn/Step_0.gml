if(global.paused)
{
	exit;	
}

#region //Close Menu
if(objInput.cancel())
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
	
	if(selected<0) selected = choiceLength-1;
	if(selected>=choiceLength) selected = 0;
	
	//selected = clamp(selected, 0,choiceLength-1);
	#endregion
	
	#region//Normal Control
	if(objInput.interact())
	{
		switch(choice[selected])
		{
			case "Rest":
				if(player.currentGld >= cost)
				{
					player.hp = player.maxhp;
					player.mp = player.maxmp;
					player.currentGld -= cost;
					Fade(false,true,rmTest,true);
					control = false;
					selected = 0;
					objInput.inputClear();
					instance_destroy();
				}
				break;
			case "Save":
				SaveTam();
				control = false;
				selected = 0;
				objInput.inputClear();
				instance_destroy();
				break;
			case "Save&Exit":
				SaveTam();
				control = false;
				selected = 0;
				objInput.inputClear();
				Fade(true,true,rmMenu,false,true);
				//instance_destroy();
				break;
		}
	}
	#endregion
}
