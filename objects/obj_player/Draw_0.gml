/// @description draw elements
draw_self();

if (powerup_sheen_timer > 0)
{
    var _sheen_strength = powerup_sheen_timer / powerup_sheen_duration;
    var _sheen_alpha = 0.25 + (0.35 * _sheen_strength) + (0.1 * sin(powerup_sheen_timer * 0.6));
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(
        sprite_index,
        image_index,
        x,
        y,
        image_xscale,
        image_yscale,
        image_angle,
        make_color_rgb(255, 220, 90),
        _sheen_alpha
    );
    gpu_set_blendmode(bm_normal);
}

if (plasma_counter > 0)
{
    draw_sprite_ext(spr_plasma_orb,0,x+36,y+18,(plasma_counter/plasma_release)/3,(plasma_counter/plasma_release)/3,0,c_white,1);
    if (plasma_counter > plasma_release /2)
    {
        var _target_x = irandom_range(x+31,x+41);
        var _target_y = irandom_range(y+13,y+23);
        line_dir = irandom_range(0,360);
        draw_line(x+36,y+18, _target_x + (5*cos(line_dir+(irandom_range(-3,3))*pi/180)),_target_y +(5*sin(line_dir+(irandom_range(-3,3))*pi/180)) );

    }
}

