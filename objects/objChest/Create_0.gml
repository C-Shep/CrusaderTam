/// @desc set image speed to 0
image_speed = 0;

if(ds_list_find_index(global.openChestList, chestID) > 0)
{
	open = true;
	image_index = 1;
}