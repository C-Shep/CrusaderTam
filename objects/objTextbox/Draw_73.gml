/// @desc 
//if no exist
if(!instance_exists(objBoxName))
{
	exit;
}

draw_set_font(fntMain);

var name_ = "Marv";
var message_ = "Hello brave hero. You must stop the wizard!"

//draw name
draw_text(objBoxName.x,objBoxName.y,name_);

//draw message
var width_ = objBoxMessage.sprite_width;
draw_text_ext(objBoxMessage.x,objBoxMessage.y,message_,-1,width_);//-1 is the default line seperation