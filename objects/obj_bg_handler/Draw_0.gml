/// @description draw procedural starfield
draw_set_alpha(1);
draw_set_color(make_color_rgb(5, 8, 18));
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_color(make_color_rgb(10, 14, 28));
draw_rectangle_colour(
    0, 0,
    room_width, room_height,
    make_color_rgb(8, 10, 22),
    make_color_rgb(10, 14, 28),
    make_color_rgb(4, 6, 14),
    make_color_rgb(7, 9, 18),
    false
);

for (var i = 0; i < bg_nebula_count; i++)
{
    draw_set_alpha(bg_nebula_alpha[i]);
    draw_set_color(bg_nebula_color[i]);
    draw_circle(bg_nebula_x[i], bg_nebula_y[i], bg_nebula_radius[i], false);
    draw_set_alpha(bg_nebula_alpha[i] * 0.5);
    draw_circle(bg_nebula_x[i] + 8, bg_nebula_y[i] - 5, bg_nebula_radius[i] * 0.6, false);
}

for (var i = 0; i < bg_star_count_far; i++)
{
    draw_set_alpha(bg_far_alpha[i]);
    draw_set_color(bg_far_color[i]);
    draw_rectangle(
        bg_far_x[i],
        bg_far_y[i],
        bg_far_x[i] + bg_far_size[i],
        bg_far_y[i] + bg_far_size[i],
        false
    );
}

for (var i = 0; i < bg_star_count_mid; i++)
{
    draw_set_alpha(bg_mid_alpha[i]);
    draw_set_color(bg_mid_color[i]);
    draw_rectangle(
        bg_mid_x[i],
        bg_mid_y[i],
        bg_mid_x[i] + bg_mid_size[i],
        bg_mid_y[i] + bg_mid_size[i],
        false
    );

    if (bg_mid_size[i] > 1)
    {
        draw_set_alpha(bg_mid_alpha[i] * 0.45);
        draw_line(bg_mid_x[i] - 1, bg_mid_y[i], bg_mid_x[i] + bg_mid_size[i] + 1, bg_mid_y[i]);
        draw_line(bg_mid_x[i], bg_mid_y[i] - 1, bg_mid_x[i], bg_mid_y[i] + bg_mid_size[i] + 1);
    }
}

for (var i = 0; i < bg_star_count_near; i++)
{
    draw_set_alpha(bg_near_alpha[i]);
    draw_set_color(bg_near_color[i]);
    draw_circle(bg_near_x[i], bg_near_y[i], bg_near_size[i] * 0.5, false);
    draw_set_alpha(bg_near_alpha[i] * 0.4);
    draw_line(bg_near_x[i] - 2, bg_near_y[i], bg_near_x[i] + 2, bg_near_y[i]);
    draw_line(bg_near_x[i], bg_near_y[i] - 2, bg_near_x[i], bg_near_y[i] + 2);
}

draw_set_alpha(0.18);
for (var i = 0; i < bg_planet_count; i++)
{
    draw_set_color(c_white);
    draw_circle(bg_planet_x[i] - 1, bg_planet_y[i] - 1, bg_planet_radius[i] + 1, false);
}

draw_set_alpha(1);
for (var i = 0; i < bg_planet_count; i++)
{
    draw_set_color(bg_planet_color[i]);
    draw_circle(bg_planet_x[i], bg_planet_y[i], bg_planet_radius[i], false);

    draw_set_alpha(0.2);
    draw_set_color(c_white);
    draw_circle(
        bg_planet_x[i] - (bg_planet_radius[i] * 0.22),
        bg_planet_y[i] - (bg_planet_radius[i] * 0.22),
        max(1, bg_planet_radius[i] * 0.28),
        false
    );
    draw_set_alpha(1);

    if (bg_planet_ring[i] == 1)
    {
        draw_set_alpha(0.35);
        draw_set_color(make_color_rgb(210, 210, 190));
        draw_ellipse(
            bg_planet_x[i] - (bg_planet_radius[i] + 3),
            bg_planet_y[i] - 1,
            bg_planet_x[i] + (bg_planet_radius[i] + 3),
            bg_planet_y[i] + 1,
            true
        );
        draw_set_alpha(1);
    }
}

for (var i = 0; i < bg_debris_count; i++)
{
    draw_set_alpha(bg_debris_alpha[i]);
    draw_set_color(bg_debris_color[i]);
    draw_roundrect(
        bg_debris_x[i],
        bg_debris_y[i],
        bg_debris_x[i] + bg_debris_length[i],
        bg_debris_y[i] + bg_debris_height[i],
        false
    );
    draw_set_alpha(bg_debris_alpha[i] * 0.35);
    draw_line(
        bg_debris_x[i] - 2,
        bg_debris_y[i] + (bg_debris_height[i] * 0.5),
        bg_debris_x[i] + bg_debris_length[i] + 2,
        bg_debris_y[i] + (bg_debris_height[i] * 0.5)
    );
}

draw_set_alpha(1);
draw_set_color(c_white);
