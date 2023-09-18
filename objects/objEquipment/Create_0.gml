/// @desc 
equipment = ds_list_create();
items = ds_list_create();

//Items
#region Items
herb = {
	name_: "Herb",
	desc : "A medicinal leaf that heals 8 hp."
}
ds_list_add(items,herb);

weed = {
	name_: "Weed",
	desc : "A mystical plant that restores 10 mp."
}
ds_list_add(items,weed);

stew = {
	name_: "Stew",
	desc : "A tasty stew that restores hp."
}
ds_list_add(items,stew);


#endregion

//Quest Items
#region Quest Items
letter = {
	name_: "Letter",
	desc : "A letter addressed to the gaffer of Torgale."
}
ds_list_add(items,letter);

mageAsh = {
	name_: "Mage Ash",
	desc : "Magical Ashes that makes plants grow faster."
}
ds_list_add(items,mageAsh);
#endregion

//Weapons
#region Weapons
knife = {
	name_: "Knife",
	type_: "Weapon",
	desc : "A Knife made of copper.",
	atk: 1,
	def: 0,
	spd: 0,
	element: "Basic",
	cost: 10,
}
ds_list_add(equipment,knife);

bronzeSpear = {
	name_: "BrnzeSpear",
	type_: "Weapon",
	desc : "A spear made from wood with an bronze tip.",
	atk: 3,
	def: 0,
	spd: 0,
	element: "Basic",
	cost: 30,
}
ds_list_add(equipment,bronzeSpear);

flamberge = {
	name_: "Flamberge",
	type_: "Weapon",
	desc : "Sword with an undulating type of blade. Deals fire damage.",
	atk: 2,
	def: 0,
	spd: 0,
	element: "Fire",
	cost: 28,
}
ds_list_add(equipment,flamberge);
#endregion

//Shields
#region Shields

woodShield = {
	name_: "WoodShield",
	type_: "Shield",
	desc : "A repurposed pot lid",
	atk: 0,
	def: 1,
	spd: 0,
	cost: 18,
}
ds_list_add(equipment,woodShield);
#endregion

//Armours
#region Armours
leatherArmour = {
	name_: "LeathrArmr",
	type_: "Armour",
	desc : "Lightweight Armour made of leather",
	atk: 0,
	def: 2,
	spd: 0,
	cost: 32,
}
ds_list_add(equipment,leatherArmour);

silkCape = {
	name_: "Silk Cape",
	type_: "Armour",
	desc : "speed increasing magical cape",
	atk: 0,
	def: 1,
	spd: 5,
	cost: 25,
}
ds_list_add(equipment,silkCape);
#endregion

//Trinkets
#region Trinkets
amulet = {
	name_: "Amulet",
	type_: "Trinket",
	desc : "An amulet made of some shells and string.",
	atk: 1,
	def: 1,
	spd: 0,
	cost: 10,
}
ds_list_add(equipment,amulet);

swiftscarf = {
	name_: "SwiftScarf",
	type_: "Trinket",
	desc : "An orange Scarf that increases speed.",
	atk: 0,
	def: 0,
	spd:7,
	cost: 10,
}
ds_list_add(equipment,swiftscarf);
#endregion