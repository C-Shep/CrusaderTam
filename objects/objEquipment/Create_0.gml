/// @desc 

equipment = ds_list_create();

//Weapons
#region Weapons
sword = {
	name_: "Sword",
	type_: "Weapon",
	atk: 2,
	def: 0
}
ds_list_add(equipment,sword);

spear = {
	name_: "Spear",
	type_: "Weapon",
	atk: 3,
	def: 0
}
ds_list_add(equipment,spear);

knife = {
	name_: "Knife",
	type_: "Weapon",
	atk: 1,
	def: 0
}
ds_list_add(equipment,knife);
#endregion

//Shields
#region Shields
shield = {
	name_: "Shield",
	type_: "Shield",
	atk: 0,
	def: 2
}
ds_list_add(equipment,shield);
#endregion

//Armours
#region Armours
chainmail = {
	name_: "Chainmail",
	type_: "Armour",
	atk: 0,
	def: 3
}
ds_list_add(equipment,chainmail);
#endregion

//Trinkets
#region Trinkets
amulet = {
	name_: "Amulet",
	type_: "Trinket",
	atk: 1,
	def: 1
}
ds_list_add(equipment,amulet);
#endregion