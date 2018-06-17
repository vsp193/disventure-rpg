var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

if (check_collision(x+_x_speed, y+_y_speed, collision_list_)) {
	speed_ = approach(speed_, 0, friction_/2);
}

_x_speed = lengthdir_x(speed_, direction_);
_y_speed = lengthdir_y(speed_, direction_);

if speed_ <= 0 exit;

if (_x_speed != 0 && check_collision(x+_x_speed, y, collision_list_)) {
	while (!check_still_colliding(x+sign(_x_speed), y, collision_list_))
		x += sign(_x_speed);
		
	_x_speed = 0;
}

if (_y_speed != 0 && check_collision(x, y+_y_speed, collision_list_)) {
	while (!check_still_colliding(x, y+sign(_y_speed), collision_list_))
		y += sign(_y_speed);

	_y_speed = 0;
}

x += _x_speed;
y += _y_speed;

speed_ = point_distance(0, 0, _x_speed, _y_speed);
direction_ = point_direction(0, 0, _x_speed, _y_speed);