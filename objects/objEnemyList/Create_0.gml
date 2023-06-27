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
	gld:1
}

goblin = {
	name_: "Goblin",
	sprite: sprGoblin,
	hp:3,
	maxhp:3,
	atk:2,
	def:3,
	spd:15,
	xp:1,
	gld:1
}

groovedog = {
	name_: "Groovedog",
	sprite: sprGrooveDog,
	hp:6,
	maxhp:6,
	atk:3,
	def:4,
	spd:30,
	xp:5,
	gld:3
}

switch(global.area)
{
	case "Goblin":
	list[0] = goblin;
	list[1] = goblin;
		break;
	case "Groove":
	list[0] = groovedog;
	list[1] = groovedog;
		break;
}