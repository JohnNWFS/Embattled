/// @description Turrent adjustments
event_inherited();
if (my_parent > 0)
{
x = my_parent.x + my_x_offset;
y = my_parent.y + my_y_offset;

//show_debug_message("Moved Turret");
}

if (my_parent <= 0)
{
 x=100;y=100;
   instance_destroy();
}

image_angle = point_direction(x,y,obj_player.x, obj_player.y);


