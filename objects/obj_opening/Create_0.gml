/// @description set variables
//"Welcome to Embion!"
global.tutorial = 0;
current_character = 1;
total_letters = 24;
max_point_in_charater = 0;
current_point = 1;
point_speed = 1;
list_prepped = 0;
our_list = ds_list_create();


our_letter = 0; //start with W
my_surface = surface_create(room_width, room_height);
surface_set_target(my_surface);
draw_clear_alpha(c_black,0);
surface_reset_target();
alarm[0]=point_speed;
max_point = ds_list_size(our_list);
list_prepped = 1;

scr_draw_a_starfield();

partner_instances_created = 0; //use to spawn objects if not in game_over state

first_item = 0;

game_over_usage = 0; //use this to stop drawing when object used at game over


