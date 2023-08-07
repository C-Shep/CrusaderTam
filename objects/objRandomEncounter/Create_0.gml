/// @desc
minTime = 2;
maxTime = 6;

if(room == rmBarghestCave && global.quest.barghestKilled)
{
	minTime = 7;
	maxTime = 9;
}

setTime = irandom_range(minTime, maxTime);

timer = 0;
tam = objTam;

//rndMap[0] = layer_tilemap_get_id("Random1");
//rndMap[1] = layer_tilemap_get_id("Random2");
