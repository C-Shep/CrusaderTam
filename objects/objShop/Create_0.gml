/// @desc 
player = objStats.playerStats;

//normal menu
choice[0] = "Buy"
choice[1] = "Sell"
choiceLength = array_length(choice);
selected = 0;
control = true;

//Inventory
inv = objStats.inv;
invLength = ds_list_size(inv);
invSelected = 0;
invControl = false;

//Stock
stock = ds_list_create();	//the stock of the shop
stockLength = ds_list_size(stock);

//Description Message
cost = 0;
description = "";
sellCost = 0;

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