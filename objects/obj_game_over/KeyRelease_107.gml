/// @description temp code
if (!instance_exists(obj_game_over))
{
instance_create(0,0,obj_game_over);
}
else
{
if (instance_exists(obj_opening))
{
with (obj_opening) {instance_destroy();}
}
instance_activate_all();

destroy_me = 1;
}



