/// @description draw shots
draw_self();
//var text = "";
for (j=1; j<shot_length+1; j++)
{
draw_sprite_ext(spr_shot1,0,shot_position[j,1],shot_position[j,2],1,1,0,c_white,1-(j*.1));
//text += string(i) + ":" + string(shot_position[i,1]) + ":" + string(shot_position[i,2]) + " ... ";
}
//show_debug_message(text);


