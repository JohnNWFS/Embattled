/// @description animate procedural background
if (!variable_instance_exists(id, "bg_star_count_far"))
{
    bg_star_count_far = 0;
    bg_star_count_mid = 0;
    bg_star_count_near = 0;
    bg_nebula_count = 0;
    bg_planet_count = 0;
    bg_debris_count = 0;
    bg_scroll_far = 0;
    bg_scroll_mid = 0;
    bg_scroll_near = 0;
}

for (var i = 0; i < bg_star_count_far; i++)
{
    bg_far_x[i] -= bg_scroll_far;
    if (bg_far_x[i] < -8)
    {
        bg_far_x[i] = room_width + irandom_range(0, 24);
        bg_far_y[i] = random(room_height);
    }
}

for (var i = 0; i < bg_star_count_mid; i++)
{
    bg_mid_x[i] -= bg_scroll_mid;
    if (bg_mid_x[i] < -8)
    {
        bg_mid_x[i] = room_width + irandom_range(0, 32);
        bg_mid_y[i] = random(room_height);
    }
}

for (var i = 0; i < bg_star_count_near; i++)
{
    bg_near_x[i] -= bg_scroll_near;
    if (bg_near_x[i] < -8)
    {
        bg_near_x[i] = room_width + irandom_range(0, 40);
        bg_near_y[i] = random(room_height);
    }
}

for (var i = 0; i < bg_nebula_count; i++)
{
    bg_nebula_x[i] -= bg_scroll_far * 0.35;
    if (bg_nebula_x[i] < -bg_nebula_radius[i] * 2)
    {
        bg_nebula_x[i] = room_width + irandom_range(40, 160);
        bg_nebula_y[i] = random_range(20, room_height - 20);
        bg_nebula_radius[i] = irandom_range(28, 72);
    }
}

for (var i = 0; i < bg_planet_count; i++)
{
    bg_planet_x[i] -= bg_scroll_far * 1.3;
    if (bg_planet_x[i] < -bg_planet_radius[i] * 3)
    {
        bg_planet_x[i] = room_width + irandom_range(60, 220);
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
}

for (var i = 0; i < bg_debris_count; i++)
{
    bg_debris_x[i] -= bg_debris_speed[i];
    if (bg_debris_x[i] < -bg_debris_length[i] - 4)
    {
        bg_debris_x[i] = room_width + irandom_range(40, 200);
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
}
