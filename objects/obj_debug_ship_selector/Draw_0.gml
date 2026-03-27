/// @description draw numbers

if (rotate_counter == 0)
{
draw_sprite_ext(spr_numbers,ones,x,y,1,1,0, c_white, 1);
draw_sprite_ext(spr_numbers,tens,x-12,y,1,1,0, c_white, 1);
}


if (rotate_counter > 0 )
{

if (track_number > actual_number)
{
draw_sprite_part(spr_numbers,ones,0,0+rotate_counter,11,15-rotate_counter,x,y);
draw_sprite_part(spr_numbers,ones_new,0,0,11, 1+ rotate_counter,x,y+(15-rotate_counter));
draw_sprite_part(spr_numbers,tens,0,0+rotate_counter,11,15-rotate_counter,x-12,y);
draw_sprite_part(spr_numbers,tens_new,0,0,11, 1+ rotate_counter,x-12,y+(15-rotate_counter));
}
else  //down is broke
{
draw_sprite_part(spr_numbers,ones_new,  0, 15-rotate_counter, 11,  1+rotate_counter,x,    y);
draw_sprite_part(spr_numbers,ones,      0,0, 11, 15-rotate_counter,x,    y+1+(rotate_counter));
draw_sprite_part(spr_numbers,tens,      0,15-rotate_counter, 11, 1+rotate_counter,x-12, y                   );
draw_sprite_part(spr_numbers,tens_new,  0,0,                11,  15-rotate_counter,x-12, y+1+rotate_counter);


}


}




