function Fade(goToRoom_,fadeToBlack_,targetRoom_,innFade_ = false, restart_ = false){
	var fade = instance_create_layer(0,0,"UI",objFade);
	fade.goToRoom = goToRoom_;
	fade.fadeToBlack = fadeToBlack_;
	fade.targetRoom = targetRoom_;
	fade.fadeBackIn = innFade_;
	fade.restart = restart_;

	if(fadeToBlack_)
	{
		fade.image_alpha = 0;
	}else{
		fade.image_alpha = 1;	
	}

}