/// @desc 

//clamp everyones hp
enemy.hp = clamp(enemy.hp, 0, enemy.maxhp);
player.hp = clamp(player.hp, 0, player.maxhp);
player.mp = clamp(player.mp, 0, player.maxmp);

//set the size of the inventory
invLength = ds_list_size(inv);

if(!combatEnd)
{
	if(!isEnemyTurn)
	{
		if(control)
		{
			#region//Scroll Control for Normal
			
			if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
			{
				selected += 1;
			}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
				selected -= 1;
			}
	
			selected = clamp(selected, 0,menuLength-1);
			
			#endregion
			
			#region//Normal Control
			if(mouse_check_button_pressed(mb_left))
			{
				switch(menu[selected])
				{
					case "Attack":
						var dmg = playerAttack(0);
						//actionMessage = dmg;
						actionMessage = "You attack the " + string(enemy.name_) + " for " + string(dmg) + " damage!";
						break;
					case "Spells":
						spellControl = true;
						control = false;
						break;
					case "Items":
						invControl = true;
						control = false;
						break;
					case "Defend":
						isDefending = true;
						totalDefence = (player.def*10);
						alarm[1] = 60;
						actionMessage = "You defend!";
						control = false;
						break;
					case "Flee":
						if(playerFlee())
						{
							actionMessage = "Escaped!";
						}else{
							actionMessage = "Could not escape!";
							alarm[1] = 60;
						}	
						control = false;
						
						break;
				}
			}
			#endregion
		}
		else if(spellControl)
		{
			#region//Scroll Control for Spells
			
			if(mouse_wheel_down() || keyboard_check_pressed(ord("S")))
			{
				spellSelected += 1;
			}else if(mouse_wheel_up() || keyboard_check_pressed(ord("W"))){
				spellSelected -= 1;
			}
	
			spellSelected = clamp(spellSelected, 0,spellLength-1);
			
			#endregion
			
			#region//go back to normal menu
			
			if(mouse_check_button_pressed(mb_right))
			{
				spellSelected = 0;
				spellControl = false;
				control = true;
			}
			
			#endregion
	
			#region//Spell Control
			if(mouse_check_button_pressed(mb_left))
			{
				switch(spell[spellSelected])
				{
					case "Heal":
						if(player.mp >= 3)
						{
							var healNum = playerHeal(irandom_range(6,8))
							actionMessage = "You heal for " + string(healNum) + " health!";
							player.mp -= 3;
						}
						break;
					case "Scorch":
						if(player.mp >= 2)
						{
							var dmg = playerAttack(irandom_range(1,2));
							actionMessage = "You burn the " + string(enemy.name_) + " for " + string(dmg) + " damage!";
							player.mp -= 2;
						}
						break;
				}
			}
			#endregion
		}
		else if(invControl)
		{
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
						var healNum = playerHeal(8)
						actionMessage = "You heal for " + string(healNum) + " health!";
						ds_list_delete(inv,invSelected);
						break;
					case "Weed":
						var restoreNum = playerRestore(10)
						actionMessage = "You restore  " + string(restoreNum) + " magic!";
						ds_list_delete(inv,invSelected);
						break;
				}
			}
			#endregion
		}
	}else{		
		#region //enemy turn
		if(alarm[0] == -1)
		{
			alarm[0] = 60;
			
			
			var randomMove = irandom(numberOfMoves-1);
			var enemyMove = ds_list_find_value(enemy.moves, randomMove);
			
			switch(enemyMove)
			{
				case "Attack": 	
					enemyDamage = enemyBasicAttack(0);
					
					actionMessage = (string(enemy.name_) + " attacks you for " + string(enemyDamage) + " damage!");
				break;
				case "Stab": 	
					enemyDamage = enemyBasicAttack(1);
					
					actionMessage = (string(enemy.name_) + " stabs you for " + string(enemyDamage) + " damage!");
				break;
				default:
					actionMessage = "???";
			}
			
			player.hp -= enemyDamage;
			
			
		}
		#endregion
	}
}else{ //combat end - whatever this mess is, works
	if(alarm[0] != -1 && alarm[1] != -1)
	{
		alarm[2] = 120;
	}else if(alarm[2] == -1){
		alarm[2] = 120;
	}
}

if(alarm[2] != -1)
{
	endMessages = true;
}