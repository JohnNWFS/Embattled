/// @description temp spawn shield
    var temp1 = instance_create(room_width,100,obj_shield_bonus);

with(temp1)
{
move_towards_point(obj_player.x,obj_player.y,3);
chase_player = 1;
}


