/// @description temporary pause
if (paused == 0)
{
paused = 1;
instance_deactivate_all(1);
instance_activate_object(obj_player);
}
else
{
paused = 0;
instance_activate_all();
}


