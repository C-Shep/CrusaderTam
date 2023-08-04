/// @desc 
equipment = ds_list_create();

//Weapons
#region Weapons
sword = {
	name_: "Sword",
	type_: "Weapon",
	desc : "A Steel Sword.",
	atk: 2,
	def: 0,
	spd: 0,
	element: "Basic",
}
ds_list_add(equipment,sword);

spear = {
	name_: "Spear",
	type_: "Weapon",
	desc : "A Steel Spear.",
	atk: 3,
	def: 0,
	spd: 0,
	element: "Basic",
}
ds_list_add(equipment,spear);

knife = {
	name_: "Knife",
	type_: "Weapon",
	desc : "A Knife made of copper.",
	atk: 1,
	def: 0,
	spd: 0,
	element: "Basic",
}
ds_list_add(equipment,knife);

bronzeSpear = {
	name_: "BronzeSpear",
	type_: "Weapon",
	desc : "A spear made from wood with an bronze tip.",
	atk: 3,
	def: 0,
	spd: 0,
	element: "Basic",
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
}
ds_list_add(equipment,flamberge);
#endregion

//Shields
#region Shields
shield = {
	name_: "Shield",
	type_: "Shield",
	desc : "A Steel Shield",
	atk: 0,
	def: 2,
	spd: 0,
}

woodShield = {
	name_: "WoodShield",
	type_: "Shield",
	desc : "A repurposed pot lid",
	atk: 0,
	def: 1,
	spd: 0,
}
ds_list_add(equipment,woodShield);
#endregion

//Armours
#region Armours
chainmail = {
	name_: "Chainmail",
	type_: "Armour",
	desc : "Armour made of Chains",
	atk: 0,
	def: 3,
	spd: 0,
}
ds_list_add(equipment,chainmail);

leatherArmour = {
	name_: "LeathrArmr",
	type_: "Armour",
	desc : "Lightweight Armour made of leather",
	atk: 0,
	def: 2,
	spd: 0,
}
ds_list_add(equipment,leatherArmour);

silkCape = {
	name_: "Silk Cape",
	type_: "Armour",
	desc : "speed increasing magical cape",
	atk: 0,
	def: 1,
	spd: 5,
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
}
ds_list_add(equipment,amulet);

swiftscarf = {
	name_: "SwiftScarf",
	type_: "Trinket",
	desc : "An orange Scarf that increases speed.",
	atk: 0,
	def: 0,
	spd:7,
}
ds_list_add(equipment,swiftscarf);
#endregion