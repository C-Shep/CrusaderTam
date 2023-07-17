function Fade(goToBattle_,fadeToBlack_){
	var fade = instance_create_layer(0,0,"UI",objFade);
	fade.goToBattle = goToBattle_;
	fade.fadeToBlack = fadeToBlack_;

	if(fadeToBlack_)
	{
		fade.image_alpha = 0;
	}else{
		fade.image_alpha = 1;	
	}
}