/// @description set score value

score_value = "";
wave_value = "";
//show_debug_overlay(1);
paused = 0;
if (global.tutorial == 1)
{
instance_create(0,0,obj_tutorial);
}

if (global.debug == 1)
{
    instance_create(15,5,obj_debug_ship_selector);
}

score_prize_goal = 1000;
score_prize_increment = 250;
score_counter = 0;
global.score = 0;
