/// @description Draw armor (hp), score and more
/// @param hp
if (paused == 0)
{
//draw the word "armor"
draw_set_color(c_white);
draw_sprite_ext(spr_letters,0,5+194,room_height-16,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,17,15+194,room_height-16,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,12,25+194,room_height-16,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,14,35+194,room_height-16,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,17,45+194,room_height-16,.75,.75,0,c_white,1);
//draw armor bar
draw_set_color(c_red);
draw_rectangle(261,room_height-14  ,261+(100*2),  room_height-14+5,0);
draw_set_color(c_yellow);
draw_rectangle(260,room_height-14-1,260+(100*2)+2,room_height-14+6,1);
draw_set_color(c_blue);
draw_rectangle(261,room_height-14  ,261+(obj_player.hp*2),  room_height-14+5,0);

//draw the word "score"
draw_set_color(c_white);
draw_sprite_ext(spr_letters,18,5,room_height-16,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,2,15,room_height-16,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,14,25,room_height-16,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,17,35,room_height-16,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,4,45,room_height-16,.75,.75,0,c_white,1);

//gather score and draw it
score_value = string(score);
var len = string_length(score_value);

for (j=0; j < (10 -(len)); j++)
{ score_value = "0" + score_value; }

//draw actual score
for (i = 0; i < 10; i++)
{ draw_sprite_ext(spr_numbers,string_byte_at(score_value,i+1)-48,60+(13*i),room_height-16,.75,.75,0,c_white,1); }

var check = string(obj_wave_handler.wave);
if (string_char_at(check,string_length(check)-2) != "." && obj_wave_handler.wave != 0)
    {
    //draw Wave
    wave_value = string(obj_wave_handler.wave);
    var len = string_length(wave_value);
    
    for (j=0; j < (4 -(len)); j++)
        { 
        wave_value = "0" + wave_value; 
        }
    
    for (i = 0; i < 4; i++)
        { 
        draw_sprite_ext(spr_numbers,string_byte_at(wave_value,i+1)-48,225+124-80+(12*i),5,.75,.75,0,c_white,1); 
        }

//draw the word "Wave"
    draw_set_color(c_white);
    draw_sprite_ext(spr_letters,22,225,5,.75,.75,0,c_white,1);
    draw_sprite_ext(spr_letters,0,225+11,5,.75,.75,0,c_white,1);
    draw_sprite_ext(spr_letters,21,225+22,5,.75,.75,0,c_white,1);
    draw_sprite_ext(spr_letters,4,225+33,5,.75,.75,0,c_white,1);
}

//draw power
draw_set_color(c_green);
draw_set_alpha(1);

for (i=0; i < obj_player.my_shot_power; i++)
{
//show_debug_message(string(obj_player.my_shot_power) + " " + string(i));
    if (i + 2 == (obj_player.my_shot_power + 1) && obj_player.my_shot_power > 1) {
        if (obj_player.alarm[1] > -1) { draw_set_alpha((obj_player.alarm[1])/obj_player.power_up_timer);} //fade the color based on timer level countdown}
                }
draw_circle(480+(i*11),room_height-12,5,0);
}

draw_set_alpha(1);
draw_set_color(c_yellow);
for (i=0; i <6; i++)
{draw_circle(480+(i*11),room_height-12,5,1);}

}//end paused

if (global.debug == 1)
{
//draw the word "debug mode"
draw_set_color(c_white);
draw_sprite_ext(spr_letters,3,5+194,5,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,4,15+194,5,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,1,25+194,5,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,20,35+194,5,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,6,45+194,5,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,12,60+194,5,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,14,70+194,5,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,3,80+194,5,.75,.75,0,c_white,1);
draw_sprite_ext(spr_letters,4,90+194,5,.75,.75,0,c_white,1);

}

