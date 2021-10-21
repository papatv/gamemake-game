///@arg value
///@arg target_array
var _value = argument0;
var _array = argument1;
var _array_length = array_length_1d(_array);

var _index = 0;
repeat _array_length {
	if _value == _array[_index] return true;
	if object_is_ancestor(_value, _array[_index]) return true;
	_index++;
}

	
return false;