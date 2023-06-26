// @desc random encounter code
if(objTam.moving)
{
	timer+=1*dt;
}

if(timer>=setTime)
{
	//game_end();
	show_debug_message("Random Encounter");
	room_goto(rmBattle);
	timer = 0;
	setTime = irandom_range(2, 6);
}