/// @description initial tiles
if (os_browser == browser_not_a_browser)
{
tile_speed = 7;
_tile_flip = 0;
tile_spawn = 0;
tiles_array[room_height/32+1,room_width/2+1] = 0;
tile_to_use[0,0] = 0;
my_ones = "";
my_num_ones = 0;
//show_debug_message("ok");
    for (i=0;i<room_height/32; i++)
    {
        for (j=0;j<(room_width/32)+1; j++)
        {
        tile_to_use[j,i] = irandom_range(0,99);
        x_tile = 0;
        if (tile_to_use[j,i] > 9) {
            my_ones = string_char_at(string(tile_to_use[j,i]),2);
  //       show_debug_message(my_ones + " <=");
               x_tile = string_byte_at(my_ones,2)-48;
               
        }
        if (tile_to_use[j,i] < 10) { x_tile = tile_to_use[j,i];
    }
y_tile=0;
if (tile_to_use[j,i] > 0) {y_tile = floor(tile_to_use[j,i]/10);}
//            show_debug_message(string(x_tile) + " " + string(y_tile));

tile_add(bg_starfield,x_tile*32,y_tile*32,32,32,j*32,i*32,1000);
}
}
}
else
{
__background_set( e__BG.Index, 0, bg_starfield );
__background_set( e__BG.HSpeed, 0, -3 );
__background_set( e__BG.Visible, 0, 1 );

}



