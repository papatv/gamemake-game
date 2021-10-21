///@arg item
var _item = singleton(argument0);

var _item_index = array_find_index(_item, global.inventory);
if _item_index == -1 {
	var _array_size = array_length_1d(global.inventory)
	for (var _i=0; _i <_array_size; _i++) {
		if global.inventory[_i] == noone {
			global.inventory[_i] = _item;
			return true; 
		}
	}
	
} else {
	return true;	
}

return false;