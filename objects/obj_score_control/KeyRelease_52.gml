/// @description temp spawn speed
    var temp1 = instance_create(300,100,obj_shot_speed_bonus);

with(temp1)
{
move_towards_point(obj_player.x,obj_player.y,3);
chase_player = 1;
increase_shot_speed = -2;
//show_debug_message("My Shot Speed " +string(increase_shot_speed) + " shot_delay " + string(obj_player.shot_delay));
}

