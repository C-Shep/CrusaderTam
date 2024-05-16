/// @desc
//random encounter times, in seconds
minTime = 2;
maxTime = 6;

//If barghest cave is cleared, lower encounters
if(room == rmBarghestCave && global.quest.barghestKilled)
{
	minTime = 7;
	maxTime = 9;
}

//If blue flower is equipped, increase encounters
if(global.trinketE == "BlueFlower")
{
	minTime = 2; 
	maxTime = 4;
}

setTime = irandom_range(minTime, maxTime);

timer = 0;
tam = objTam;
