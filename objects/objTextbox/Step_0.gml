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
	if(objInput.interact()) characters = string_length(message_);
}else{
	//message finisjed
	if(objInput.interact())	
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