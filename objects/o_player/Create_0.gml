init_movement_entity(.5);

acceleration_ = 0.25;
max_speed_ = 1.5;
direction_facing_ = player_dir.right;
image_speed = 0;
image_index = 0;

enum player_dir { right, up, left, down }
sprites_[player_dir.right] = s_player_run_down;
sprites_[player_dir.up] = s_player_run_down;
sprites_[player_dir.left] = s_player_run_down;
sprites_[player_dir.down] = s_player_run_down;

enum player_states { idle, moving }
state_ = player_states.idle;
