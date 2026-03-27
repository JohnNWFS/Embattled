/// @description draw elements
draw_self();

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


