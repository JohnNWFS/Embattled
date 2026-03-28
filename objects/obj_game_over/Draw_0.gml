/// @description set surface and draw game over
//surface_copy(application_surface,0,0,surface_end_game_state);
if (prepare_surface == 0)
{
prepare_surface = 1;
surface_end_game_state = surface_create(room_width, room_height);

if (surface_exists(surface_end_game_state))
{
surface_set_target(surface_end_game_state);
draw_clear_alpha(c_black,0);
for (i = 0; i < room_height/32;i++)
    {
        for (j = 0; j < room_width/32;j++)
        {
        draw_background_part(bg_starfield,irandom_range(0,9)*32,irandom_range(0,9)*32,32,32,j*32,i*32);
        }

}
draw_background(bg_game_over,0,0);
surface_reset_target();
}

}
if (draw_part < max_draw_part)
{
if (surface_exists(surface_end_game_state))
{
surface_copy_part(application_surface, room_width/2 - (draw_part *20),room_height/2 - (draw_part *20),surface_end_game_state,room_width/2 - (draw_part *20),room_height/2 - (draw_part *20),2*draw_part*20,2*draw_part * 20);
}
}
else
{
if (surface_exists(surface_end_game_state))
    {
    surface_copy(application_surface,0,0,surface_end_game_state);
    }
    else
    {
    draw_background(bg_game_over,0,0);
    }
//draw the word "score"
draw_set_color(c_white);
draw_sprite_ext(spr_letters,18,145,room_height-100,1.5,1.5,0,c_white,1);
draw_sprite_ext(spr_letters,2,167,room_height-100,1.5,1.5,0,c_white,1);
draw_sprite_ext(spr_letters,14,189,room_height-100,1.5,1.5,0,c_white,1);
draw_sprite_ext(spr_letters,17,211,room_height-100,1.5,1.5,0,c_white,1);
draw_sprite_ext(spr_letters,4,233,room_height-100,1.5,1.5,0,c_white,1);

//gather score and draw it
score_value = string(global.score);
var score_len = string_length(score_value);

for (k=0; k < (10 - score_len); k++)
{ score_value = "0" + score_value; }

//draw actual score
for (k = 0; k < 10; k++)
{ draw_sprite_ext(spr_numbers,string_byte_at(score_value,k+1)-48,277+(22*k),room_height-100,1.5,1.5,0,c_white,1); }
}

if (destroy_me == 1)
{
if (surface_exists(application_surface))
{
    surface_set_target(application_surface);
    draw_clear_alpha(c_black,0);
    surface_reset_target();
}
if (surface_exists(surface_end_game_state))
{
    surface_free(surface_end_game_state);
}
instance_destroy();
}
