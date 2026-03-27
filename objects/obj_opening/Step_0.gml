/// @description instantiate partner objects if not in game over state
if (game_over_usage == 0 && partner_instances_created == 0)
{
partner_instances_created = 1;
instance_create(room_width-100,70,obj_start);
instance_create(room_width-100,104,obj_set_tutorial);
instance_create(room_width-108,126,obj_set_debug);

}

