/// @desc Menu Control
if(global.paused)
{
	exit;	
}

#region //Close Menu
if(keyboard_check_pressed(vk_tab))
{
	control = false;
	spellControl = false;
	invControl = false;
	equipControl = false;
	exitControl = false;
	selected = 0;
	objTam.playerControl = true;
	keyboard_clear(vk_tab);
	instance_destroy();
}
#endregion

//set the size of the inventory
inv = objStats.inv;
invLength = ds_list_size(inv);
equipLength = ds_list_size(equip);

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
			
	if(objInput.cancel())
	{
		control = false;
		spellControl = false;
		invControl = false;
		equipControl = false;
		exitControl = false;
		selected = 0;
		instance_destroy();
		
	}
			
	#endregion
	
	#region//Normal Control
	if(objInput.interact())
	{
		switch(choice[selected])
		{
			case "Spells":
				spellControl = true;
				invControl = false;
				equipControl = false;
				statsControl = false;
				control = false;
				break;
			case "Inventory":
				invControl = true;
				spellControl = false;
				equipControl = false;
				statsControl = false;
				control = false;
				break;
			case "Equip":
				equipControl = true;
				invControl = false;
				spellControl = false;
				statsControl = false;
				control = false;
				break;
			case "Stats":
				statsControl = true;
				equipControl = false;
				invControl = false;
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
			
	if(objInput.cancel())
	{
		spellSelected = 0;
		spellControl = false;
		control = true;
	}
			
	#endregion
	
	#region//Spell Control
	if(objInput.interact() && !currentlyDisplaying)
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
			
	if(objInput.cancel())
	{
		invSelected = 0;
		invControl = false;
		control = true;
	}
			
	#endregion
			
	#region//Inventory Control - Use items in your inventory
	if(objInput.interact())
	{
		var selectedItem = ds_list_find_value(inv,invSelected);
		switch(selectedItem)
		{
			case "Herb":
				var healNum = playerHeal(8);
				actionMessage = "You heal for " + string(healNum) + " health!";
				ds_list_delete(inv,invSelected);
				break;
			case "StrongHerb":
				var healNum = playerHeal(16);
				actionMessage = "You heal for " + string(healNum) + " health!";
				ds_list_delete(inv,invSelected);
				break;
			case "Honey":
				var restoreNum = playerRestore(10);
				actionMessage = "You restore " + string(restoreNum) + " magic!";
				ds_list_delete(inv,invSelected);
				break;
			case "Tea":
				var restoreNum = playerRestore(18);
				actionMessage = "You restore " + string(restoreNum) + " magic!";
				ds_list_delete(inv,invSelected);
				break;
			case "Stew":
				var healNum = playerHeal(10);
				var restoreNum = playerRestore(10);
				actionMessage = "You heal " + string(healNum) + " hp and mp!";
				ds_list_delete(inv,invSelected);
				break;
			case "Apple":
				var healNum = playerHeal(12);
				actionMessage = "You heal " + string(healNum) + " health!";
				ds_list_delete(inv,invSelected);
				break;
			default:
				actionMessage = "Doesn't do anything";
		}
		currentlyDisplaying = true;
	}
	#endregion
}
else if(equipControl)
{
	//Lock Player
	objTam.playerControl = false;
	
	#region//Scroll Control for Equip
			
	if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
	{
		equipSelected += 1;
	}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
		equipSelected -= 1;
	}
	
	if(equipSelected >= equipLength)
	{
		equipSelected = 0;
	}else if(equipSelected < 0){
		equipSelected = equipLength-1;
	}
			
	#endregion	
			
	#region//Go back to normal menu
			
	if(objInput.cancel())
	{
		equipSelected = 0;
		equipControl = false;
		control = true;
	}
			
	#endregion
			
	#region//Equip Control
	if(objInput.interact())
	{
		var selectedEquip = ds_list_find_value(equip,equipSelected);
		
		for(var j = 0; j<ds_list_size(objEquipment.equipment);j++)
		{
			var e = ds_list_find_value(objEquipment.equipment,j);
		
			//Equipping and Unequipping
			if(selectedEquip == e.name_)
			{
				switch(e.type_)
				{
					case "Weapon":
						if(selectedEquip != global.weaponE)
						{
							global.weaponE = selectedEquip;
							global.weaponPlace = equipSelected;
						}else{
							global.weaponE = noone;
							global.weaponPlace = noone;
						}
						break;
				
					case "Shield":
						if(selectedEquip != global.shieldE)
						{
							global.shieldE = selectedEquip;
							global.shieldPlace = equipSelected;
						}else{
							global.shieldE = noone;
							global.shieldPlace = noone;
						}
						break;
				
					case "Armour":
						if(selectedEquip != global.armourE)
						{
							global.armourE = selectedEquip;
							global.armourPlace = equipSelected;
						}else{
							global.armourE = noone;
							global.armourPlace = noone;
						}
						break;
				
					case "Trinket":
						if(selectedEquip != global.trinketE)
						{
							global.trinketE = selectedEquip;
							global.trinketPlace = equipSelected;
						}else{
							global.trinketE = noone;
							global.trinketPlace = noone;
						}
						break;
				}
			}
		}
	}
	#endregion
}
else if(statsControl)
{
	//Lock Player
	objTam.playerControl = false;
	
	#region//Go back to normal menu
			
	if(objInput.cancel())
	{
		statsControl = false;
		control = true;
	}
			
	#endregion
}
else
{
	//Unlock Player
	objTam.playerControl = true;
}