///@arg x
///@arg y
///@arg collision_list

var _x = argument0;
var _y = argument1;
var _collision_list = argument2;
var _collisions_count = ds_list_size(_collision_list);
var _is_colliding = false;

for (var i = 0; i < _collisions_count; ++i) {
	var _collider = _collision_list[| i];
	
	var _collider_check = is_string(_collider) ?
					!tile_meeting(_x, _y, _collider) :
					!place_meeting(_x, _y, _collider);
	
	if (i == 0) _is_colliding = _collider_check;
	else _is_colliding = _is_colliding && _collider_check;
}

return _is_colliding;