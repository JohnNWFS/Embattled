/// @description initial tiles
// Procedural background state used by this object's Step/Draw events.
// We initialize it up front so the newer starfield code always has valid data.
depth = 1000000;

bg_scroll_far = 0.28;
bg_scroll_mid = 0.65;
bg_scroll_near = 1.15;

bg_star_count_far = 78;
bg_star_count_mid = 42;
bg_star_count_near = 20;
bg_nebula_count = 4;
bg_planet_count = 3;
bg_debris_count = 9;

bg_far_x = array_create(bg_star_count_far, 0);
bg_far_y = array_create(bg_star_count_far, 0);
bg_far_size = array_create(bg_star_count_far, 1);
bg_far_alpha = array_create(bg_star_count_far, 1);
bg_far_color = array_create(bg_star_count_far, c_white);

bg_mid_x = array_create(bg_star_count_mid, 0);
bg_mid_y = array_create(bg_star_count_mid, 0);
bg_mid_size = array_create(bg_star_count_mid, 1);
bg_mid_alpha = array_create(bg_star_count_mid, 1);
bg_mid_color = array_create(bg_star_count_mid, c_white);

bg_near_x = array_create(bg_star_count_near, 0);
bg_near_y = array_create(bg_star_count_near, 0);
bg_near_size = array_create(bg_star_count_near, 1);
bg_near_alpha = array_create(bg_star_count_near, 1);
bg_near_color = array_create(bg_star_count_near, c_white);

bg_nebula_x = array_create(bg_nebula_count, 0);
bg_nebula_y = array_create(bg_nebula_count, 0);
bg_nebula_radius = array_create(bg_nebula_count, 0);
bg_nebula_alpha = array_create(bg_nebula_count, 0);
bg_nebula_color = array_create(bg_nebula_count, c_white);

bg_planet_x = array_create(bg_planet_count, 0);
bg_planet_y = array_create(bg_planet_count, 0);
bg_planet_radius = array_create(bg_planet_count, 0);
bg_planet_color = array_create(bg_planet_count, c_white);
bg_planet_ring = array_create(bg_planet_count, 0);

bg_debris_x = array_create(bg_debris_count, 0);
bg_debris_y = array_create(bg_debris_count, 0);
bg_debris_length = array_create(bg_debris_count, 0);
bg_debris_height = array_create(bg_debris_count, 0);
bg_debris_alpha = array_create(bg_debris_count, 0);
bg_debris_color = array_create(bg_debris_count, c_white);
bg_debris_speed = array_create(bg_debris_count, 0);

for (var i = 0; i < bg_star_count_far; i++)
{
    bg_far_x[i] = random(room_width);
    bg_far_y[i] = random(room_height);
    bg_far_size[i] = choose(1, 1, 1, 2);
    bg_far_alpha[i] = random_range(0.15, 0.45);
    bg_far_color[i] = merge_color(c_white, make_color_rgb(140, 165, 210), random_range(0.15, 0.45));
}

for (var i = 0; i < bg_star_count_mid; i++)
{
    bg_mid_x[i] = random(room_width);
    bg_mid_y[i] = random(room_height);
    bg_mid_size[i] = irandom_range(1, 2);
    bg_mid_alpha[i] = random_range(0.35, 0.8);
    bg_mid_color[i] = merge_color(c_white, make_color_rgb(180, 210, 255), random_range(0.1, 0.35));
}

for (var i = 0; i < bg_star_count_near; i++)
{
    bg_near_x[i] = random(room_width);
    bg_near_y[i] = random(room_height);
    bg_near_size[i] = irandom_range(2, 4);
    bg_near_alpha[i] = random_range(0.55, 0.95);
    bg_near_color[i] = choose(
        make_color_rgb(255, 240, 220),
        make_color_rgb(220, 235, 255),
        make_color_rgb(255, 255, 255)
    );
}

for (var i = 0; i < bg_nebula_count; i++)
{
    bg_nebula_x[i] = random(room_width);
    bg_nebula_y[i] = random_range(20, room_height - 20);
    bg_nebula_radius[i] = irandom_range(28, 72);
    bg_nebula_alpha[i] = random_range(0.06, 0.16);
    bg_nebula_color[i] = choose(
        make_color_rgb(80, 70, 130),
        make_color_rgb(45, 95, 150),
        make_color_rgb(130, 60, 115),
        make_color_rgb(65, 115, 120)
    );
}

for (var i = 0; i < bg_planet_count; i++)
{
    bg_planet_x[i] = random(room_width);
    bg_planet_y[i] = random_range(30, room_height - 30);
    bg_planet_radius[i] = irandom_range(4, 9);
    bg_planet_color[i] = choose(
        make_color_rgb(155, 110, 80),
        make_color_rgb(85, 130, 155),
        make_color_rgb(145, 95, 135),
        make_color_rgb(120, 145, 95)
    );
    bg_planet_ring[i] = choose(0, 0, 1);
}

for (var i = 0; i < bg_debris_count; i++)
{
    bg_debris_x[i] = random(room_width);
    bg_debris_y[i] = random(room_height);
    bg_debris_length[i] = irandom_range(6, 18);
    bg_debris_height[i] = irandom_range(1, 3);
    bg_debris_alpha[i] = random_range(0.08, 0.2);
    bg_debris_color[i] = merge_color(
        make_color_rgb(110, 130, 150),
        make_color_rgb(170, 180, 190),
        random_range(0.15, 0.55)
    );
    bg_debris_speed[i] = random_range(bg_scroll_near * 0.85, bg_scroll_near * 1.45);
}

if (os_browser == browser_not_a_browser)
{
tile_speed = 7;
tile_scroll_tick = 0;
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


