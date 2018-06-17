///@arg x
///@arg y
///@arg tilemap

var _x, _y, _tilemap, _current_x, _current_y, _is_metting;
_x = argument0;
_y = argument1;
_tilemap = layer_get_id(argument2);

_current_x = x;
_current_y = y;

x = _x;
y = _y;

_is_metting = tilemap_get_at_pixel(_tilemap, bbox_right, bbox_top) ||
			  tilemap_get_at_pixel(_tilemap, bbox_right, bbox_bottom) ||
			  tilemap_get_at_pixel(_tilemap, bbox_left, bbox_top) ||
			  tilemap_get_at_pixel(_tilemap, bbox_left, bbox_bottom);
			  
x = _current_x;
y = _current_y;
		  
return _is_metting;