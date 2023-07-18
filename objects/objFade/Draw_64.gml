/// @desc 


if(fadeToBlack)
{
	if(goToRoom)
	{
		global.paused = true;
	}
	
	if(image_alpha < 1)
	{
		image_alpha += fadeSpeed*dt;
	}else{
		if(goToRoom)
		{
			room_goto(targetRoom);
		}else{
			instance_destroy();
		}
	}
	
	if(image_alpha < 0.25) finalFade = 0.25;
	else if(image_alpha < 0.5) finalFade = 0.5;
	else if(image_alpha < 0.75) finalFade = 0.75;
	else finalFade = 1;
	
}else{//fade from black
	if(image_alpha > 0)
	{
		image_alpha -= fadeSpeed*dt;
	}else{
		instance_destroy();
	}
	
	if(image_alpha > 0.75) finalFade = 1;
	else if(image_alpha > 0.5) finalFade = 0.75;
	else if(image_alpha > 0.25) finalFade = 0.5;
	else finalFade = 0.25;
}

draw_set_color(c_black);
draw_set_alpha(finalFade);

draw_rectangle(0,0,view_wport*2,view_hport*2,false);

draw_set_alpha(1);
draw_set_color(c_white);