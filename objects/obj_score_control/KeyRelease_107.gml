/// @description temp code
if (!instance_exists(obj_game_over))
{
instance_create(0,0,obj_game_over);
}
else
{
with (obj_game_over) {instance_destroy();}
}
show_debug_message("did it work?");

