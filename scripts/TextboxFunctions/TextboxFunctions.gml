global.textboxSequence = -1;

function createTextbox(dialogArray){
	//create textbox
	var textbox = instance_create_layer(0,0,"UI",objTextbox);
	textbox.start(dialogArray);
	
	var camX = camera_get_view_x(view_camera);
	var camY = camera_get_view_y(view_camera);
	global.textboxSequence = layer_sequence_create("UI",camX,camY,seqTextbox);
	
	//pause
	global.paused = true;
}

function closeTextbox()
{
	layer_sequence_destroy(global.textboxSequence);
	instance_destroy(objTextbox);
	
	//unpause
	global.paused = false;
	
	//clear the interact button so you dont get stuck in dialog
	mouse_clear(INTERACT);
}