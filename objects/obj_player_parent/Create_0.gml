/// @description variable set
max_hp = 100;
hp = 100;
//show_debug_message("HP " + string(hp));
vert_speed = 3;
hor_speed = 2;
our_thrust = instance_create(x-8,y,obj_player_thrust);
our_thrust.visible = 0;
start_x = x;
start_y = y;
shot_delay = 20;  //time between allowed shots
my_shot_power = 1; //set initial power of shots
power_up_timer = 300; //5 seconds fire up by 1 (note +10 for each power
my_shield = 0;
my_shield_on = 0;
visible = 0;
i_am_docked = 0; //handle dock actions on player
plasma_available = 1; //does holding down fire cause plasma to form
plasma_counter = 0; //use to count charge up to plasma release
plasma_release = 120; // use to trigger plasma release;

