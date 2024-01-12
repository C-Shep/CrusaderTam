/// @desc 
if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
{
	selected += 1;
}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
	selected -= 1;
}
	
selected = clamp(selected, 0,choiceLength-1);

#region//Normal Control
if(objInput.interact())
{
	switch(choice[selected])
	{
		case "Continue":
			control = false;
			Load();
			break;
		case "New Game":
			control = false;
			//room_goto(rmQuillbeach);
			room_goto(rmWheatville);
			break;
		case "Exit":
			control = false;
			game_end();
			break;
	}
}
#endregion