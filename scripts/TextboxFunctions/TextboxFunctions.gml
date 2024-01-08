global.textboxSequence = -1;

function createTextbox(dialogArray,endEvent_ = "None"){
	//create textbox
	var textbox = instance_create_layer(0,0,"UI",objTextbox);
	textbox.start(dialogArray);
	textbox.endEvent = endEvent_;
	
	var camX = camera_get_view_x(view_camera);
	var camY = camera_get_view_y(view_camera);
	global.textboxSequence = layer_sequence_create("UI",camX,camY,seqTextbox);
	
	//pause
	global.paused = true;
}

function closeTextbox(endEvent_ = "None")
{
	layer_sequence_destroy(global.textboxSequence);
	instance_destroy(objTextbox);
	
	//unpause
	global.paused = false;
	
	//Stuff that happens at the end of a textbox
	switch(endEvent_)
	{
		case "Sofia Walk":
			global.quest.sofiaTalked = true;
			objNpcSofia.walkToHouse = true;
			break;
		case "Sofia Give":
			ds_list_add(objStats.inv,"Amulet");
			global.quest.sofiaGiven = true;
			break;
		default:
		case "Barghest Quest Accept":
			global.quest.barghestQuestAccepted = true;
			break; 
		case "Let Into Castle":
			global.quest.allowedIntoCastle = true;
			if(instance_exists(objNpcValiburghGuard)) objNpcValiburghGuard.walk = true;
			break; 
		case "Begin Fight":
			//save the room
			global.lastRoom = room;
		
			//Fade to battle room
			Fade(true,true,rmBattle);
			
		break;
		case "Emma Asked":
			global.quest.emmaAskHelp = true;
			break; 
		case "Emma Delivered":
			global.quest.emmaChat = true;
			ds_list_add(objStats.inv,"Herb");
			ds_list_add(objStats.inv,"Herb");
			ds_list_add(objStats.inv,"Herb");
			break;
		case "Post Asked":
			global.quest.postAskHelp = true;
			break; 
		case "Post Delivered":
			global.quest.postChat = true;
			ds_list_add(objStats.inv,"SwiftScarf");
			break;
		case "Postino Asked":
			global.quest.postinoAskHelp = true;
			break; 
		case "Postino Delivered":
			ds_list_add(objStats.inv,"SwiftScarf");
			global.quest.postinoChat = true;
			break;
		case "Get Stew":
			ds_list_add(objStats.inv,"Stew");
			global.quest.stewReceived = true;
			break;
		case "Orchard Complete":
			global.quest.orchardComplete = true;
			break;
		case "Talked Once To King":
			global.quest.kingTalkedToOnce = true;
			break;
		case "End Demo":
			room_goto(rmEnd);
			break;
			
		default:
			//usually nothing
	}
	
	//clear the interact button so you dont get stuck in dialog
	objInput.inputClear();
}