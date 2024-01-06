playerStats = {
	hp:109,
	maxhp:109,
	mp:10,
	maxmp:10,
	lvl:1,
	atk:19, //default 3
	baseAtk:19,
	def:1,
	baseDef:1,
	spd:16,
	baseSpd:16,
	currentXp:0,
	currentGld:20
}

//Player learns heal at lvl 1
playerSpell[0] = "Heal";

//Inventory
inv = ds_list_create();
invLength = ds_list_size(inv);

//Max Healing
healCount = 0;
maxHeals = 5;

/*
ds_list_add(inv,"Herb");
ds_list_add(inv,"Herb");
ds_list_add(inv,"Herb");
ds_list_add(inv,"Weed");
ds_list_add(inv,"Shield");
ds_list_add(inv,"Sword");
ds_list_add(inv,"Spear");
ds_list_add(inv,"Chainmail");
//ds_list_add(inv,"Amulet");7
*/

//Functions
findItem = function(item){
	var numFound = 0;
	for(var i=0;i<invLength;i++)
	{
		var itemName = ds_list_find_value(inv, i);
		if(itemName == item)
		{
			numFound++;
		}
	}
	return numFound;
}

turnInItem = function(item){
	for(var i=0;i<invLength;i++)
	{
		var itemName = ds_list_find_value(inv, i);
		if(itemName == item)
		{
			ds_list_delete(inv,i);
			return true;
		}
	}
	return false;
}