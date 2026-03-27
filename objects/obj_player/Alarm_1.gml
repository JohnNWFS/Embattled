/// @description Shot power timer [1]
if (obj_player.my_shot_power > 1)
{
my_shot_power -= 1;

alarm[1] = power_up_timer;
}

