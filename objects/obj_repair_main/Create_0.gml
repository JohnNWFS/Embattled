/// @description set up dock
repair_dock = instance_create(x,y,obj_repair_dock);
bottom_dock = instance_create(x,y,obj_repair_main_bottom);
if (obj_wave_handler.wave > 1)
{
repair_dock.visible = 0;
}
stop_at_x = 0;

