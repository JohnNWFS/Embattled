/// @description spawn random things
var item = irandom_range(0,3)
var start_x = 0;
var start_y = 0;
var spawn = noone;
{
if (first_item == 0) {first_item = 1; item = 0;}
switch (item)
    {
case 0:
var bubble1 = instance_create(200,200,obj_bubble);
    with (bubble1)
    {
        letters_xscale = .75;
        letters_yscale = .75;
        image_index = 1; //use tailess bubble
        x = 200;
        y = 200;
    my_attached = -1;
    my_xoffset = 14;
    my_yoffset = 5;
    my_life = 240;
    my_message = "SPACE OR CLICK|START TO BEGIN";
    image_yscale = 1.2;
    image_xscale = 3;
    letters_x_offset = 21;
    letters_y_offset = 18;
    
    }
    
case 1: // an enemy
    start_x = room_width + 32;
    start_y = (room_height/2) + irandom_range(-128,128);
    spawn = instance_create(start_x,start_y,obj_blank);    
    with (spawn)
    {
        var choice = choose(spr_enemy_1, spr_enemy_large);
        sprite_index = choice;
        image_speed = .2;
        move_towards_point( -64,y,3);
    }
    
break;

case 2:
    start_x = -32;
    start_y = (room_height/2) + irandom_range(-128,128);
    spawn = instance_create(start_x,start_y,obj_blank);    
    with (spawn)
    {
        sprite_index = spr_player;
        image_speed = .2;
        move_towards_point( room_width+64,y,3);
    }
    spawn = instance_create(start_x-12,start_y,obj_blank);
    with (spawn)
    {
        sprite_index = spr_thrust;
        image_speed = .2;
        move_towards_point( room_width+64,y,3);
    }
        
    
break;

case 3:
start_x = choose(room_width+64,-64);
start_y = irandom_range(room_height/2 - 128, room_height/2 + 128);
    spawn = instance_create(start_x,start_y,obj_blank);    
    with (spawn)
    {
        var choice = choose(spr_armor_bonus_prize, spr_power_bonus_prize);
        sprite_index = choice;
        image_speed = .2;
        image_xscale = .75;
        image_yscale = .75;
        move_towards_point( room_width/2,room_height/2,4);
    }


break;

default:
break;

    }

}
alarm[1] = 300;
