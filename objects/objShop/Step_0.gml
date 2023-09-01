if(global.paused)
{
	exit;	
}

#region //Close Menu
//if(keyboard_check_pressed(vk_space))
//{
//	control = false;
//	sellControl = false;
//	buyControl = false;
//	selected = 0;
//	instance_destroy();
//}
#endregion

//set the size of the inventory & stock
invLength = ds_list_size(inv);
stockLength = ds_list_size(stock);

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
		sellControl = false;
		buyControl = false;
		selected = 0;
		instance_destroy();
	}
			
	#endregion
	
	#region//Normal Control
	if(mouse_check_button_pressed(mb_left))
	{
		switch(choice[selected])
		{
			case "Buy":
				buyControl = true;
				sellControl = false;
				control = false;
				break;
			case "Sell":
				buyControl = false;
				sellControl = true;
				control = false;
				break;
		}
	}
	#endregion
}
else if(buyControl)
{
	//Lock Player
	objTam.playerControl = false;
	
	#region//Scroll Control for Inv
			
	if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
	{
		buySelected += 1;
	}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
		buySelected -= 1;
	}
	
	if(buySelected >= stockLength)
	{
		buySelected = 0;
	}else if(buySelected < 0){
		buySelected = stockLength-1;
	}
			
	#endregion	
			
	#region//go back to normal menu
			
	if(mouse_check_button_pressed(mb_right))
	{
		buySelected = 0;
		buyControl = false;
		control = true;
	}
			
	#endregion
			
	#region//Inventory Control
	if(mouse_check_button_pressed(mb_left))
	{
		var selectedItem = ds_list_find_value(stock,buySelected);
		
		//Buy the item
		if(player.currentGld >= cost)
		{
			if((selectedItem == "Herb" && objStats.healCount < objStats.maxHeals) || selectedItem != "Herb" )
			{
				ds_list_add(objStats.inv,selectedItem);
				player.currentGld -= cost;
			}
		}

	}
	#endregion
}
else if(sellControl)
{
	//Lock Player
	objTam.playerControl = false;
	
	#region//Scroll Control for Inv
			
	if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
	{
		sellSelected += 1;
	}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
		sellSelected -= 1;
	}
	
	if(sellSelected >= invLength)
	{
		sellSelected = 0;
	}else if(sellSelected < 0){
		sellSelected = invLength-1;
	}
			
	#endregion	
			
	#region//go back to normal menu
			
	if(mouse_check_button_pressed(mb_right))
	{
		sellSelected = 0;
		sellControl = false;
		control = true;
	}
			
	#endregion
			
	#region//Inventory Control
	if(mouse_check_button_pressed(mb_left))
	{
		ds_list_delete(inv,sellSelected);
		player.currentGld += cost;

	}
	#endregion
}