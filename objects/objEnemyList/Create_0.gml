/// @desc The Enemies Stats
//---------------------------------------------------------- Normal Enemies ----------------------------------------------------------
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
ds_list_add(deinonychus.moves,"Scratch");
ds_list_add(deinonychus.moves,"Attack");
ds_list_add(deinonychus.moves,"Ravage");

//Horsebird -----------------------------
horsebird = {
	name_: "Horsebird",
	sprite: sprHippogriff,
	hp:24,
	maxhp:24,
	atk:5,
	def:4,
	spd:20,
	xp:9,
	gld:7,
	drop: "Weed",
	weak:"None",
	moves: ds_list_create()
}

//Horsebird Moves
ds_list_add(horsebird.moves,"Attack");
ds_list_add(horsebird.moves,"Drain");

//Peryton -----------------------------
peryton = {
	name_: "Peryton",
	sprite: sprPeryton,
	hp:19,
	maxhp:19,
	atk:6,
	def:4,
	spd:50,
	xp:10,
	gld:5,
	drop: "Herb",
	weak:"Fire",
	moves: ds_list_create()
}

//Peryton Moves
ds_list_add(peryton.moves,"Attack");
ds_list_add(peryton.moves,"Swoop");

//Haniwa -----------------------------
haniwa = {
	name_: "Haniwa",
	sprite: sprHaniwa,
	hp:20,
	maxhp:20,
	atk:6,
	def:5,
	spd:1,
	xp:10,
	gld:8,
	drop: "Herb",
	weak:"None",
	moves: ds_list_create()
}

//Haniwa Moves
ds_list_add(haniwa.moves,"Attack");
ds_list_add(haniwa.moves,"Attack");
ds_list_add(haniwa.moves,"TriAttack");

//Jorogumo -----------------------------
jorogumo = {
	name_: "Jorogumo",
	sprite: sprJorogumo,
	hp:24,
	maxhp:24,
	atk:7,
	def:3,
	spd:20,
	xp:10,
	gld:8,
	drop: "Herb",
	weak:"Fire",
	moves: ds_list_create()
}

//Jorogumo Moves
ds_list_add(jorogumo.moves,"Attack");
ds_list_add(jorogumo.moves,"Wrap");

//Camabat -----------------------------
camabat = {
	name_: "Camabat",
	sprite: sprCamabat,
	hp:20,
	maxhp:20,
	atk:6,
	def:1,
	spd:50,
	xp:8,
	gld:8,
	drop: "Weed",
	weak:"None",
	moves: ds_list_create()
}

//Camabat Moves
ds_list_add(camabat.moves,"Attack");

//Skeleton -----------------------------
skeleton = {
	name_: "Skeleton",
	sprite: sprSkeleton,
	hp:25,
	maxhp:25,
	atk:7,
	def:3,
	spd:1,
	xp:11,
	gld:5,
	drop: "Herb",
	weak:"None",
	moves: ds_list_create()
}

//Skeleton Moves
ds_list_add(skeleton.moves,"Kick");
ds_list_add(skeleton.moves,"Attack");
ds_list_add(skeleton.moves,"Stab");

//Cho -----------------------------
cho = {
	name_: "Cho",
	sprite: sprCho,
	hp:20,
	maxhp:20,
	atk:3,
	def:5,
	spd:30,
	xp:30,
	gld:20,
	drop: "Weed",
	weak:"None",
	moves: ds_list_create()
}

//Cho Moves
ds_list_add(cho.moves,"Attack");
ds_list_add(cho.moves,"ChoDrain");

//Trolling -----------------------------
trolling = {
	name_: "Trolling",
	sprite: sprTrolling,
	hp:20,
	maxhp:20,
	atk:4,
	def:3,
	spd:30,
	xp:10,
	gld:3,
	drop: "Herb",
	weak:"Fire",
	moves: ds_list_create()
}

//Trolling Moves
ds_list_add(trolling.moves,"Attack");
ds_list_add(trolling.moves,"Headbutt");

//Troll -----------------------------
troll = {
	name_: "Troll",
	sprite: sprTroll,
	hp:30,
	maxhp:30,
	atk:8,
	def:3,
	spd:20,
	xp:14,
	gld:7,
	drop: "BrnzeSpear",
	weak:"Fire",
	moves: ds_list_create()
}

//Troll Moves
ds_list_add(troll.moves,"Attack");
ds_list_add(troll.moves,"Headbutt");

//Parakeet -----------------------------
parakeet = {
	name_: "Parakeet",
	sprite: sprParakeet,
	hp:20,
	maxhp:20,
	atk:6,
	def:1,
	spd:60,
	xp:11,
	gld:7,
	drop: "Knife",
	weak:"Water",
	moves: ds_list_create()
}

//Parakeet Moves
ds_list_add(parakeet.moves,"Attack");
ds_list_add(parakeet.moves,"Swoop");
ds_list_add(parakeet.moves,"Stab");

//Bear -----------------------------
bear = {
	name_: "Bear",
	sprite: sprBear,
	hp:25,
	maxhp:25,
	atk:6,
	def:3,
	spd:30,
	xp:12,
	gld:8,
	drop: "Herb",
	weak:"Fire",
	moves: ds_list_create()
}

//Bear Moves
ds_list_add(bear.moves,"Attack");
ds_list_add(bear.moves,"Ravage");

//Aobozu -----------------------------
aobozu = {
	name_: "Aobozu",
	sprite: sprAobozu,
	hp:23,
	maxhp:23,
	atk:6,
	def:4,
	spd:20,
	xp:12,
	gld:8,
	drop: "Herb",
	weak:"None",
	moves: ds_list_create()
}

//Aobozu Moves
ds_list_add(aobozu.moves,"Magic");

//Redcap -----------------------------
redcap = {
	name_: "Redcap",
	sprite: sprRedcap,
	hp:22,
	maxhp:22,
	atk:7,
	def:3,
	spd:20,
	xp:10,
	gld:5,
	drop: "Knife",
	weak:"None",
	moves: ds_list_create()
}

//Redcap Moves
ds_list_add(redcap.moves,"Kick");
ds_list_add(redcap.moves,"Attack");
ds_list_add(redcap.moves,"Stab");

//---------------------------------------------------------- Bosses ----------------------------------------------------------

//Barghest -----------------------------
barghest = {
	name_: "Barghest",
	sprite: sprBarghest,
	hp:60,
	maxhp:60,
	atk:8,
	def:3,
	spd:10,
	xp:25,
	gld:20,
	drop: "Herb",
	weak:"None",
	moves: ds_list_create()
}

//Barghest Moves
ds_list_add(barghest.moves,"Scratch");
ds_list_add(barghest.moves,"Attack");
ds_list_add(barghest.moves,"Attack");
ds_list_add(barghest.moves,"Ravage");

//Axassin -----------------------------
axassin = {
	name_: "Axassin",
	sprite: sprAxassin,
	hp:80,
	maxhp:80,
	atk:10,
	def:4,
	spd:10,
	xp:15,
	gld:25,
	drop: "Weed",
	weak:"None",
	moves: ds_list_create()
}

//Axassin Moves
ds_list_add(axassin.moves,"Kick");
ds_list_add(axassin.moves,"Attack");

//---------------------------------------------------------- Secret Enemies ----------------------------------------------------------

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
		ds_list_add(list,peryton);
		ds_list_add(list,horsebird);
		ds_list_add(list,haniwa);
		break;
	case "Barghest Cave":
		ds_list_add(list,haniwa);
		ds_list_add(list,jorogumo);
		ds_list_add(list,camabat);
		ds_list_add(list,skeleton);
		break;
	case "Ominous Cave":
		ds_list_add(list,skeleton);
		ds_list_add(list,skeleton);
		ds_list_add(list,skeleton);
		ds_list_add(list,camabat);
		ds_list_add(list,camabat);
		ds_list_add(list,camabat);
		ds_list_add(list,cho);
		break;
	case "Valiburgh Orchard":
		break;
	case "Valiburgh North Fields":
		break;
	case "Valiburgh North Forest":
		break;
	case "Canalia Fields":
		break;
	case "Canalia Hills":
		break;
	case "Torgale North Field":
			ds_list_add(list,horsebird);
			ds_list_add(list,parakeet);
			ds_list_add(list,trolling);
			ds_list_add(list,aobozu);
			ds_list_add(list,redcap);
		break;
	case "Torgale North Forest":
			ds_list_add(list,bear);
			ds_list_add(list,trolling);
			ds_list_add(list,troll);
			ds_list_add(list,redcap);
		break;
	case "Torgale South Field":
		break;
	case "Torgale South Forest":
		break;
	case "Torgale Hills":
			ds_list_add(list,trolling);
			ds_list_add(list,troll);
			ds_list_add(list,redcap);
		break;
	case "Barghest Boss":
		ds_list_add(list,barghest);
		break;
	case "Axassin Boss":
		ds_list_add(list,axassin);
		break;
}

