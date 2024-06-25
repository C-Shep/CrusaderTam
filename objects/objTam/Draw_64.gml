/// @desc 
if(alarm[0] > -1)
{
	var textSize = 4;
	var messageX = 416;
	var messageY = 80;
	var msgLoot = "You found a " + string(lootGrabbed) + "!";
	var colour = c_white;
	draw_set_font(fntMain);
	
	if(lootGrabbed == "Empty")
	{
		msgLoot = "Empty!";
	}
	
	//draw message box
	draw_sprite_stretched(sprBox,0,messageX-16,messageY-16,832,80);
	
	//display the loot
	draw_text_transformed_colour(
		messageX,
		messageY,
		msgLoot,
		textSize,
		textSize,
		0,
		colour,colour,colour,colour,1);
}

draw_text(16,16,objStats.healCount);