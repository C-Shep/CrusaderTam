/// @desc create enemies
defaultEnemy = {
	name_: "Default",
	sprite: sprGoblin,
	hp:1,
	maxhp:1,
	atk:1,
	def:1,
	spd:1,
	xp:1,
	gld:1,
	drop: "Herb",
	moves: ds_list_create()
}
	
ds_list_add(defaultEnemy.moves,"Attack");	

//Goblin
goblin = {
	name_: "Goblin",
	sprite: sprGoblin,
	hp:3,
	maxhp:3,
	atk:2,
	def:3,
	spd:15,
	xp:1,
	gld:1,
	drop: "Herb",
	moves: ds_list_create()
}

//Goblin Moves
ds_list_add(goblin.moves,"Attack");
ds_list_add(goblin.moves,"Stab");

//Groovedog
groovedog = {
	name_: "Groovedog",
	sprite: sprGrooveDog,
	hp:6,
	maxhp:6,
	atk:3,
	def:4,
	spd:30,
	xp:5,
	gld:3,
	drop: "Weed",
	moves: ds_list_create()
}

//Groovedog Moves
ds_list_add(groovedog.moves,"Attack");

//Thistleta
thistleta = {
	name_: "Thistleta",
	sprite: sprThistleta,
	hp:8,
	maxhp:8,
	atk:4,
	def:8,
	spd:5,
	xp:10,
	gld:5,
	drop: "Herb",
	moves: ds_list_create()
}

//Thistleta Moves
ds_list_add(thistleta.moves,"Attack");

switch(global.area)
{
	case "Goblin":
	list[0] = goblin;
	list[1] = goblin;
		break;
	case "Groove":
	list[0] = groovedog;
	list[1] = thistleta;
		break;
}