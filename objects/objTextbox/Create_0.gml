/// @desc 
textSpeed = 0.5;
started = false;

dialog = -1;
messageIndex = 0;
characters = 0;

//functions

start = function (dialogArray)
{
	dialog = dialogArray;
	started = true;
}

nextMessage = function()
{
	messageIndex++;
	characters = 0;
}