/// @desc 
if(!started) exit;

//get the message
var messageData_ = dialog[messageIndex];
var message_ = messageData_.message_;

if(characters < string_length(message_))
{
	//increase char count
	characters += textSpeed;
	
	//skip text
	if(mouse_check_button_pressed(INTERACT)) characters = string_length(message_);
}else{
	//message finisjed
	if(mouse_check_button_pressed(INTERACT))	
	{
		if((messageIndex+1)<array_length(dialog))
		{
			nextMessage();
		}
		else{
			closeTextbox(endEvent);
		}
	}
}