init_movement_entity(.5);

enum character_dir { right, up, left, down }

acceleration_ = 0.25;
max_speed_ = 1.5;
acceleration_run_ = 0.85;
max_speed_run_ = 3.75;
direction_facing_ = character_dir.right;
image_speed = 0;
image_index = 0;

enum npc_states { idle, moving, talking }
state_ = npc_states.idle;
