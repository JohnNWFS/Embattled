/// @description handle tiles
if (os_browser == browser_not_a_browser)
{
_tile_flip += 1;
if (_tile_flip < tile_speed)
{
tile_layer_shift(1000,-1,0);
tile_spawn +=1;
}

if (_tile_flip = tile_speed) {_tile_flip = 0 ;}
if(tile_spawn = 32)
{
tile_spawn = 0;
    for (i=0;i<room_height/32; i++)
    {
        j=room_width/32;
        tile_to_use[j,i] = irandom_range(0,99);
        x_tile = 0;
        if (tile_to_use[j,i] > 9) {
            my_ones = string_char_at(string(tile_to_use[j,i]),2);
            x_tile = string_byte_at(my_ones,2)-48;   
        }
        if (tile_to_use[j,i] < 10) { x_tile = tile_to_use[j,i];}
y_tile=0;
if (tile_to_use[j,i] > 0) {y_tile = floor(tile_to_use[j,i]/10);}
tile_add(bg_starfield,x_tile*32,y_tile*32,32,32,j*32,i*32,1000);

}
    for (i=0;i<room_height/32; i++)
    {
    var tiles = tile_get_ids_at_depth(1000);
    for (var z = 0; z < array_length_1d(tiles); z++;)
    {
    var_tile_x = tile_get_x(tiles[z])
    {
    if (var_tile_x < 0) {tile_delete(tiles[z]);}
    }    
    }
    }

}
}
//show_debug_message(array_length_1d(tile_get_ids_at_depth(1000)));

