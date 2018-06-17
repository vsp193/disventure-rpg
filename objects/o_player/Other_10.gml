/// @description Idle
sprite_index = sprites_[direction_facing_];

var _x_input = o_input.right - o_input.left;
var _y_input = o_input.down - o_input.up;
var _input_direction = point_direction(0, 0, _x_input, _y_input);

if (_x_input == 0 && _y_input == 0) {
	image_speed = 0;
	image_index = 0;
	apply_friction();
}
else {
	image_speed = 0.6;
	image_xscale = _x_input != 0 ? _x_input : image_xscale;
	
	get_direction_facing(_input_direction);
	add_max_speed(_input_direction, acceleration_, max_speed_);	
}

move();