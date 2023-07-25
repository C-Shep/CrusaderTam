/// @desc 
if(alarm[0] == -1)
{
	alpha -= 1*dt;
	if(alpha > 0.75) finalAlpha = 1;
	else if(alpha > 0.5) finalAlpha = 0.75;
	else if(alpha > 0.25) finalAlpha = 0.5;
	else finalAlpha = 0;
}
draw_set_alpha(finalAlpha);
draw_set_font(fntMain);
draw_sprite_stretched(sprBox,0,messageX-16,messageY,384+16,64);
draw_text_ext_transformed(messageX,messageY+8,"Game Saved!",0,384,textSize,textSize,0);
draw_set_alpha(1);

if(finalAlpha <= 0) instance_destroy();