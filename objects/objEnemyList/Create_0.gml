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
	weak:"None",
	moves: ds_list_create()
}
	
ds_list_add(defaultEnemy.moves,"Attack");	

//Goblin -----------------------------
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
	weak:"None",
	moves: ds_list_create()
}

//Goblin Moves
ds_list_add(goblin.moves,"Attack");
ds_list_add(goblin.moves,"Stab");

//Evil Goat -----------------------------
evilgoat = {
	name_: "Evil Goat",
	sprite: sprEvilGoat,
	hp:6,
	maxhp:6,
	atk:3,
	def:3,
	spd:30,
	xp:3,
	gld:2,
	drop: "Weed",
	weak:"None",
	moves: ds_list_create()
}

//Evil Goat Moves
ds_list_add(evilgoat.moves,"Attack");
ds_list_add(evilgoat.moves,"Headbutt");

//Scarecrow -----------------------------
scarecrow = {
	name_: "Scarecrow",
	sprite: sprScarecrow,
	hp:6,
	maxhp:6,
	atk:4,
	def:3,
	spd:5,
	xp:3,
	gld:3,
	drop: "Herb",
	weak:"Fire",
	moves: ds_list_create()
}

//Scarecrow Moves
ds_list_add(scarecrow.moves,"Attack");
ds_list_add(scarecrow.moves,"Sharpen");

//Wolf -----------------------------
wolf = {
	name_: "Wolf",
	sprite: sprWolf,
	hp:7,
	maxhp:7,
	atk:4,
	def:0,
	spd:40,
	xp:4,
	gld:3,
	drop: "Herb",
	weak:"None",
	moves: ds_list_create()
}

//Wolf Moves
ds_list_add(wolf.moves,"Scratch");
ds_list_add(wolf.moves,"Attack");
ds_list_add(wolf.moves,"Ravage");

//Nightcap -----------------------------
nightcap = {
	name_: "Nightcap",
	sprite: sprNightcap,
	hp:7,
	maxhp:7,
	atk:3,
	def:2,
	spd:10,
	xp:5,
	gld:6,
	drop: "Weed",
	weak:"None",
	moves: ds_list_create()
}

//Nightcap Moves
ds_list_add(nightcap.moves,"Spore");
ds_list_add(nightcap.moves,"Attack");

//Sycalmore -----------------------------
sicklemore = {
	name_: "Sicklemore",
	sprite: sprSicklemore,
	hp:10,
	maxhp:10,
	atk:5,
	def:3,
	spd:20,
	xp:6,
	gld:5,
	drop: "Herb",
	weak:"Fire",
	moves: ds_list_create()
}

//Sicklemore Moves
ds_list_add(sicklemore.moves,"Attack");

//Flying Snake -----------------------------
flyingSnake = {
	name_: "Flysnake",
	sprite: sprFlyingSnake,
	hp:10,
	maxhp:10,
	atk:5,
	def:2,
	spd:50,
	xp:5,
	gld:5,
	drop: "Knife",
	weak:"None",
	moves: ds_list_create()
}

//Flying Snake Moves
ds_list_add(flyingSnake.moves,"Attack");

//Deinonychus -----------------------------
deinonychus = {
	name_: "Deinonychus",
	sprite: sprDeinonychus,
	hp:12,
	maxhp:12,
	atk:5,
	def:1,
	spd:30,
	xp:7,
	gld:6,
	drop: "Knife",
	weak:"None",
	moves: ds_list_create()
}

//Deinonychus Moves
ds_list_add(deinonychus.moves,"Attack");

//Hippogriff -----------------------------
hippogriff = {
	name_: "Hippogriff",
	sprite: sprHippogriff,
	hp:15,
	maxhp:15,
	atk:5,
	def:2,
	spd:20,
	xp:9,
	gld:7,
	drop: "Weed",
	weak:"None",
	moves: ds_list_create()
}

//Hippogriff Moves
ds_list_add(hippogriff.moves,"Attack");
//ds_list_add(hippogriff.moves,"Drain");

//Peryton -----------------------------
peryton = {
	name_: "Peryton",
	sprite: sprPeryton,
	hp:14,
	maxhp:14,
	atk:5,
	def:2,
	spd:50,
	xp:10,
	gld:5,
	drop: "Herb",
	weak:"Fire",
	moves: ds_list_create()
}

//Peryton Moves
ds_list_add(peryton.moves,"Attack");


//Groovedog -----------------------------
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
	weak:"None",
	moves: ds_list_create()
}

//Groovedog Moves
ds_list_add(groovedog.moves,"Attack");

//Thistleta -----------------------------
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
	weak:"None",
	moves: ds_list_create()
}

//Thistleta Moves
ds_list_add(thistleta.moves,"Attack");

//Area Lists -----------------------------
list = ds_list_create();

switch(global.area)
{
	case "Early Forest":
	ds_list_add(list,goblin);
	ds_list_add(list,evilgoat);
	ds_list_add(list,scarecrow);
	ds_list_add(list,wolf);
		break;
	case "Early Hills":
	ds_list_add(list,nightcap);
	ds_list_add(list,nightcap);
	ds_list_add(list,evilgoat);
	ds_list_add(list,wolf);
	ds_list_add(list,wolf);
		break;
	case "Valiburgh Forest":
	ds_list_add(list,wolf);
	ds_list_add(list,deinonychus);
	ds_list_add(list,flyingSnake);
	ds_list_add(list,sicklemore);
	break;
	case "Valiburgh Hills":
	ds_list_add(list,flyingSnake);
	ds_list_add(list,peryton);
	ds_list_add(list,hippogriff);
	ds_list_add(list,deinonychus);
	break;
	case "Barghest Cave":
	
	break;
	
}