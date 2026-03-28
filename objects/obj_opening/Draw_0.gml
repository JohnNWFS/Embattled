/// @description draw each step
if (!surface_exists(my_surface))
{
    my_surface = surface_create(room_width, room_height);
    if (!surface_exists(my_surface))
    {
        exit;
    }
    surface_set_target(my_surface);
    draw_clear_alpha(c_black,0);
    surface_reset_target();
}

surface_set_target(my_surface);
draw_set_color(c_white);
if (current_point < max_point-4)
{
    for (i=0; i < current_point; i+=2)
        {
        if (!ds_list_empty(our_list)){
            var my_x = ds_list_find_value(our_list, i);
            var my_y = ds_list_find_value(our_list, i+1);
           // draw_circle(my_x*6,my_y*6,4,0);
            draw_line_width(my_x*6,my_y*6,ds_list_find_value(our_list, i+4)*6,ds_list_find_value(our_list, i+5)*6,5);
            //draw_rectangle(my_x*6,my_y*6,ds_list_find_value(our_list, i+2)*6,ds_list_find_value(our_list, i+3)*6,1)
            //show_debug_message(" X POINT " + string(ds_list_find_value(our_list, i)));
            //show_debug_message(" Y POINT " + string(ds_list_find_value(our_list, i+1)));
            if (i > 2)
            {
            draw_line_width(ds_list_find_value(our_list, i-2)*6,ds_list_find_value(our_list, i-1)*6,ds_list_find_value(our_list, i+4)*6,ds_list_find_value(our_list, i+5)*6,6); 
            }
                }
          }
}
    surface_reset_target();

    if (surface_exists(my_surface))
    {
    draw_surface(my_surface,0,0);
    }
    
///draw credits
if (our_letter == total_letters)
{
    var my_message = "A GAME BY|@JOHNNWFS"
    var my_row = 0;
    var my_col = 0;
    for (i=1; i<string_length(my_message)+1; i++)
    {
    if (string_byte_at(my_message,i) < 91 && string_byte_at(my_message,i) > 64)
    {
        draw_sprite(spr_letters,string_byte_at(my_message,i)-65,room_width-200 + (my_col*16), 10 + my_row * 18);
    }
    if (string_byte_at(my_message,i) == 64) 
    {
    draw_sprite(spr_symbols,string_byte_at(my_message,i)-34,room_width-200 + (my_col*16), 10 + my_row * 18);}
        
    if (string_byte_at(my_message,i) == 124) {my_row += 1; my_col = -1;}
    my_col += 1;
    }       
/*  32
B 66
Y 89
| 124
@ 64
J 74
O 79
H 72
N 78
N 78
W 87
F 70*/
}



/* */
/*  */
