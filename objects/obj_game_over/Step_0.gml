/// @description Instantiate objects if Score has drawn
if (draw_part >= max_draw_part-1 && start_drawn == 0)
{
start_drawn = 1;
var start_button = instance_create(room_width-100,70,obj_start);
start_button.depth = -100;

}

