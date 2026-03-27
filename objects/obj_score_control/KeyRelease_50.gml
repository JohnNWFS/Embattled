/// @description temp spawn power
    var temp1 = instance_create(300,100,obj_power_bonus);
    temp1.increase_shot_power = 1;

with(temp1)
{
move_towards_point(obj_player.x,obj_player.y,3);
chase_player = 1;
}

