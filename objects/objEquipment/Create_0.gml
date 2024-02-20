/// @desc 
equipment = ds_list_create();
items = ds_list_create();

//Items
#region Items
herb = {
	name_: "Herb",
	desc : "A medicinal leaf that heals 8 hp.",
	cost : 7,
}
ds_list_add(items,herb);

strongHerb = {
	name_: "StrongHerb",
	desc : "A strong medicinal leaf that heals 16 hp.",
	cost : 16,
}
ds_list_add(items,strongHerb);

honey = {
	name_: "Honey",
	desc : "A magical syrup that restores 10 mp.",
	cost : 15,
}
ds_list_add(items,honey);

tea = {
	name_: "Tea",
	desc : "A magical, relaxing drink that restores 18 mp.",
	cost : 25,
}
ds_list_add(items,tea);

stew = {
	name_: "Stew",
	desc : "A tasty stew that restores hp.",
	cost : 10,
}
ds_list_add(items,stew);

apple = {
	name_: "Apple",
	desc : "A magic apple that restores 16 hp.",
	cost : 10,
}
ds_list_add(items,apple);


#endregion

//Quest Items
#region Quest Items
letter = {
	name_: "Letter",
	desc : "A letter addressed to the gaffer of Torgale.",
	cost : 1,
}
ds_list_add(items,letter);

blueParcel = {
	name_: "BlueParcel",
	desc : "A parcel that a certain courier dropped.",
	cost : 1,
}
ds_list_add(items,blueParcel);

mageAsh = {
	name_: "MageAsh",
	desc : "Magical Ashes that makes plants grow faster.",
	cost : 1,
}
ds_list_add(items,mageAsh);

trollNote = {
	name_: "TrollNote",
	desc : "A letter from the troll king to wheatville's mayor.",
	cost : 1,
}
ds_list_add(items,trollNote);

valiburghKey = {
	name_: "ValiburghKey",
	desc : "A key that opens the valiburgh castle vault.",
	cost : 1,
}
ds_list_add(items,valiburghKey);

torgaleKey = {
	name_: "TorgaleKey",
	desc : "A key that opens the locked door in torgale.",
	cost : 1,
}
ds_list_add(items,torgaleKey);
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

waterWand = {
	name_: "WaterWand",
	type_: "Weapon",
	desc : "Wand with a blue crystal on the end. Deals water damage.",
	atk: 3,
	def: 0,
	spd: 0,
	element: "Water",
	cost: 40,
}
ds_list_add(equipment,waterWand);

greataxe = {
	name_: "Greataxe",
	type_: "Weapon",
	desc : "A massive axe wielded by the Axassin. Deals earth damage",
	atk: 5,
	def: 0,
	spd: 0,
	element: "Earth",
	cost: 30,
}
ds_list_add(equipment,greataxe);
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

ironShield = {
	name_: "IronShield",
	type_: "Shield",
	desc : "A sturdy, basic shield",
	atk: 0,
	def: 2,
	spd: 0,
	cost: 32,
}
ds_list_add(equipment,ironShield);

steelShield = {
	name_: "SteelShield",
	type_: "Shield",
	desc : "A sturdy, strong shield",
	atk: 0,
	def: 3,
	spd: 0,
	cost: 40,
}
ds_list_add(equipment,steelShield);

redShield = {
	name_: "RedShield",
	type_: "Shield",
	desc : "A crimson shield gifted from postino",
	atk: 0,
	def: 3,
	spd: 10,
	cost: 30,
}
ds_list_add(equipment,redShield);
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
	name_: "ShellAmulet",
	type_: "Trinket",
	desc : "An amulet made of some shells and string",
	atk: 1,
	def: 1,
	spd: 0,
	cost: 10,
}
ds_list_add(equipment,amulet);

swiftscarf = {
	name_: "SwiftScarf",
	type_: "Trinket",
	desc : "An orange Scarf that increases speed",
	atk: 0,
	def: 0,
	spd:15,
	cost: 10,
}
ds_list_add(equipment,swiftscarf);

quickRing = {
	name_: "QuickRing",
	type_: "Trinket",
	desc : "An ring that accentuates speed and defence",
	atk: 0,
	def: 1,
	spd:8,
	cost: 15,
}
ds_list_add(equipment,quickRing);

blueFlower = {
	name_: "BlueFlower",
	type_: "Trinket",
	desc : "An azure rose that attracts trouble",
	atk: 1,
	def: 1,
	spd:0,
	cost: 20,
}
ds_list_add(equipment,blueFlower);
#endregion