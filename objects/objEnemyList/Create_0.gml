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
	hp:4,
	maxhp:4,
	atk:3,
	def:3,
	spd:15,
	xp:2,
	gld:2,
	drop: "Herb",
	moves: ds_list_create()
}

//Goblin Moves
ds_list_add(goblin.moves,"Attack");
ds_list_add(goblin.moves,"Stab");

//Evil Goat
evilgoat = {
	name_: "Evil Goat",
	sprite: sprEvilGoat,
	hp:6,
	maxhp:6,
	atk:3,
	def:3,
	spd:30,
	xp:3,
	gld:1,
	drop: "Weed",
	moves: ds_list_create()
}

//Evil Goat Moves
ds_list_add(evilgoat.moves,"Attack");
ds_list_add(evilgoat.moves,"Headbutt");

//Scarecrow
scarecrow = {
	name_: "Scarecrow",
	sprite: sprScarecrow,
	hp:6,
	maxhp:6,
	atk:4,
	def:3,
	spd:5,
	xp:3,
	gld:2,
	drop: "Herb",
	moves: ds_list_create()
}

//Scarecrow Moves
ds_list_add(scarecrow.moves,"Attack");
ds_list_add(scarecrow.moves,"Sharpen");

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

list = ds_list_create();

switch(global.area)
{
	case "Early Forest":
	ds_list_add(list,goblin);
	ds_list_add(list,evilgoat);
	ds_list_add(list,scarecrow);
		break;
	case "Early Hills":
	ds_list_add(list,groovedog);
	ds_list_add(list,thistleta);
		break;
}