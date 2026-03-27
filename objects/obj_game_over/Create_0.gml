//set variables
instance_deactivate_all(obj_score_control);


prepare_surface = 0;

draw_part = 0;
draw_speed = 5;
max_draw_part = 20;
alarm[0] = draw_speed;
destroy_me = 0; //use to handle a surface cleanup in the draw event
start_drawn = 0; //use to handle creating a start button only once

var opening = instance_create(0,0,obj_opening);
opening.game_over_usage = 1;
opening.alarm[1] = 300; //spawn random things

