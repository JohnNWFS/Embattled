/// @description variables and alarm
change_index = -1;
alarm[0] = 45;//irandom_range(30,60);
image_speed = 0;
if (sprite_index == spr_positives)
{
move_towards_point(x+(irandom_range(50,90)),y+(irandom_range(-200,-100)),1); 
}
if (sprite_index == spr_negatives)
{
move_towards_point(x+(irandom_range(-90,-50)),y+(irandom_range(-200,-100)),1);
}
//show_debug_message(sprite_index);

