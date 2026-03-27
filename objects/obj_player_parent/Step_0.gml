/// @description handle variables
if (hp > 100) {hp = 100;}
if (hp < 0) {hp = 0; instance_create(0,0,obj_game_over);}
if (shot_delay < 8) {shot_delay = 8;}
if (my_shield_on == 1)
{
my_shield.visible = 1;
}


