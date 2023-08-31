/// @desc 
player = objStats.playerStats;

//normal menu
choice[0] = "Rest"
choice[1] = "Save"
choice[2] = "Exit"
choiceLength = array_length(choice);
selected = 0;
control = true;

//cost
cost = 10;

//Other Control Bools
buyControl = false;
sellControl = false;
buySelected = false;
sellSelected = false;

messageX = 416;
messageY = 80;

//Coords and Sizes
menuX = 16;
menuY = 16;
menuHeight = 64;
textSize = 4;

//Colour
colour = c_white;

//Messages
messageX = 416;
messageY = 80;
actionMessage = "";
currentlyDisplaying = false;
startDisplayTimer = true;