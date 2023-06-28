/// @desc Menu Control
#region //Open and Close Menu
if(keyboard_check_pressed(vk_tab))
{
	if((!control && (spellControl || invControl)) || (control))
	{
		control = false;
		spellControl = false;
		invControl = false;
		selected = 0;
	}else if(!control){
		control = true;
		spellControl = false;
		invControl = false;
	}else{
		control = false;
		spellControl = false;
		invControl = false;	
		selected = 0;
	}
}
#endregion

//set the size of the inventory
invLength = ds_list_size(inv);

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
	
	#region//Close Menu with Right Click
			
	if(mouse_check_button_pressed(mb_right))
	{
		control = false;
		spellControl = false;
		invControl = false;
		selected = 0;
	}
			
	#endregion
	
	#region//Normal Control
	if(mouse_check_button_pressed(mb_left))
	{
		switch(choice[selected])
		{
			case "Spells":
				spellControl = true;
				invControl = false;
				control = false;
				break;
			case "Inventory":
				invControl = true;
				spellControl = false;
				control = false;
				break;
		}
	}
	#endregion
}else if(spellControl)
{
	//Lock Player
	objTam.playerControl = false;
	
	#region//Scroll Control for Spells
			
	if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
	{
		spellSelected += 1;
	}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
		spellSelected -= 1;
	}
	
	spellSelected = clamp(spellSelected, 0,spellLength-1);
	#endregion
	
	#region//Go back to normal menu
			
	if(mouse_check_button_pressed(mb_right))
	{
		spellSelected = 0;
		spellControl = false;
		control = true;
	}
			
	#endregion
	
	#region//Spell Control
	if(mouse_check_button_pressed(mb_left) && !currentlyDisplaying)
	{
		switch(spell[spellSelected])
		{
			case "Heal":
				if(player.mp >= 3)
				{
					var healNum = playerHeal(irandom_range(6,8))
					actionMessage = "You heal for " + string(healNum) + " health!";
					player.mp -= 3;
				}else{
					actionMessage = "Not enough MP!";
				}
				break;
			case "Scorch":
					actionMessage = "It's real hot!";
				break;
			case "Freeze":
					actionMessage = "A bit chilly!";
				break;
			case "Counter":
					actionMessage = "Stop enemy spells!";
				break;
			default:
					actionMessage = "Doesn't do anything";
		}
		currentlyDisplaying = true;
	}
	#endregion
}
else if(invControl)
{
	//Lock Player
	objTam.playerControl = false;
	
	#region//Scroll Control for Inv
			
	if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
	{
		invSelected += 1;
	}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
		invSelected -= 1;
	}
	
	if(invSelected >= invLength)
	{
		invSelected = 0;
	}else if(invSelected < 0){
		invSelected = invLength-1;
	}
			
	#endregion	
			
	#region//go back to normal menu
			
	if(mouse_check_button_pressed(mb_right))
	{
		invSelected = 0;
		invControl = false;
		control = true;
	}
			
	#endregion
			
	#region//Inventory Control
	if(mouse_check_button_pressed(mb_left))
	{
		var selectedItem = ds_list_find_value(inv,invSelected);
		switch(selectedItem)
		{
			case "Herb":
				var healNum = playerHeal(8);
				actionMessage = "You heal for " + string(healNum) + " health!";
				ds_list_delete(inv,invSelected);
				break;
			case "Weed":
				actionMessage = "Good Zaza!";
				//ds_list_delete(inv,invSelected);
				break;
			default:
					actionMessage = "Doesn't do anything";
		}
		currentlyDisplaying = true;
	}
	#endregion
}
else
{
	//Unlock Player
	objTam.playerControl = true;
}