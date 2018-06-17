///@arg direction

var _direction = argument0;

direction_facing_ = round(_direction/90);
direction_facing_ = direction_facing_ == 4 ? 0 : direction_facing_;