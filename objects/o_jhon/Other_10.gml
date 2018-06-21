/// @description Idle
if (o_input.action_one_pressed && place_meeting(x, y+1, o_player)) {
	tby(o_jhon, 1,
		@"Ei aventureiro,[.] parece bem cansado.[..]
		Poderia por favor pegar nas minhas [c/red][j]bolas[r]?");
	tbyStart();
	state_ = npc_states.talking;
}