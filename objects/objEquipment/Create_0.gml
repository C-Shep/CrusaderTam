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
}
ds_list_add(equipment,sword);

spear = {
	name_: "Spear",
	type_: "Weapon",
	desc : "A Steel Spear.",
	atk: 3,
	def: 0,
	spd: 0,
}
ds_list_add(equipment,spear);

knife = {
	name_: "Knife",
	type_: "Weapon",
	desc : "A Knife made of copper.",
	atk: 1,
	def: 0,
	spd: 0,
}
ds_list_add(equipment,knife);
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
ds_list_add(equipment,shield);
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