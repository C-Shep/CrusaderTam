/// @desc 
draw_set_font(fntMain);

//Draw Box
draw_sprite_stretched(sprBox,0,menuX-16,menuY+32,camera_get_view_width(view_current)-16,menuHeight*2);
draw_text_transformed_color(menuX,menuY+menuHeight,"Thank you for playing. That's all for now. :)",textSize,textSize,0,colour,colour,colour,colour,1);

