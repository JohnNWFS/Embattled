//drawing events
draw_self();
//var test1 = obj_player.x-x;
//var test2 = obj_player.y-y;
//draw_text(x-32,y-32,string(test1) + " " + string(test2));
if (docked == 1 && show_docked_message == 0)
{
show_docked_message = 1;
    if (obj_wave_handler.wave > 0 && instance_exists(obj_repair_main))
    {
    var bubble = instance_create(obj_repair_main.x,obj_repair_main.y-60,obj_bubble);
    with (bubble)
        {
        //my_attached = obj_repair_main;
        my_xoffset = 0;
        my_yoffset = 0;
        my_life = 240;
        my_message = "DOCKED";
        image_index = 1; //use tailess bubble
        image_xscale = 1.2;
        image_xscale = 1.1;
        letters_xscale = .75;
        letters_yscale = .75;
 
        }
    }
}

if (docked == 1 && light_show == 1)
{

if (instance_exists(obj_player)) { obj_player.depth = 200; }
draw_set_color(c_white);
var start_value = 6;
var line_length = 32;
    for (i=0; i < 5; i++)
    {
    var current_length = 0;
    var first_segment = irandom_range(5,11);
    draw_line(x+6+(i*12),y+6,x+6+(i*12)+irandom_range(-3,3),y+6+first_segment);
    current_length += first_segment;
    var second_segment = irandom_range(5,11);
    draw_line(x+6+(i*12),y+6+first_segment,x+6+(i*12)+irandom_range(-3,3),y+6+first_segment+second_segment);
    current_length += second_segment;
    var third_segment = 38-(first_segment+second_segment);
    draw_line(x+6+(i*12),y+6+first_segment+second_segment,x+6+(i*12)+irandom_range(-3,3),y+6+first_segment+second_segment+third_segment);
    }  
    
}

if (obj_wave_handler.wave == -.5 && docked == 0 && draw_player == 1)
{
draw_sprite(spr_player,0,x+16,y+6);
}
if (docked == 1)
{
draw_player = 0;
if (instance_exists(obj_player)) { obj_player.visible = 1; }
}
