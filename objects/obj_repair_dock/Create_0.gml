/// @description handle variables
docked = 0; // 1 if the player docks
can_dock = 1; // will only be able to dock after placement
show_docked_message = 0; //used to show docked message once
light_show = 0; //start light show after dock
show_over = 0; //used to reset player depth
player_depth = 0;
if (instance_exists(obj_player)) { player_depth = obj_player.depth; }
draw_player = 1; //used for wave 1 only

