/// @description draw

repeat (3)
{
line_dir = irandom_range(-360,360);
line_len = irandom_range(8,12);
line_len2 = line_len + irandom_range (0,4);
target_x = x+(line_len*cos(line_dir*pi/180));
target_y = y+(line_len*sin(line_dir*pi/180));
draw_set_color(c_white); //make "lightning" white
draw_line(x, y, target_x, target_y);
draw_line(target_x,target_y, target_x + (5*cos(line_dir+(irandom_range(-3,3))*pi/180)),target_y +(5*sin(line_dir+(irandom_range(-3,3))*pi/180)) );
}

draw_sprite_ext(spr_plasma_orb,0,x,y,scale_value,scale_value,angle,c_white,1);
angle += 5;
if angle > 360 angle = 5;
if (scale_value < .91)
{
    scale_counter += 1;
    if (scale_counter = 6)
    {
    scale_counter = 1;
    scale_value += .05;
    }
}

//draw_text(x-20,y-20,shot_power);

