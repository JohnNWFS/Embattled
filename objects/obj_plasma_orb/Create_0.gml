/// @description Initial variables
angle = 0;
scale_value = .1;
scale_counter = 0;
shot_power = 10; //most enemies have this set through spawn. For now, set to 10 fixed

//used in various spots
line_dir = 0;
line_len = 0;
line_len2 = 0;
target_x = 0;
target_y = 0;

move_towards_point(room_width+128,obj_player.y+20,2);

