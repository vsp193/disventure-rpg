///@arg friction

speed_ = 0;
direction_ = 0;
friction_ = argument0;
collision_list_ = ds_list_create();

// Set default collisions
ds_list_add(collision_list_, "Collision");