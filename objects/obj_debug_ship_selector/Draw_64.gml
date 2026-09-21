/// @description draw numbers

if (rotate_counter == 0)
{
draw_sprite_ext(spr_numbers,ones,x,y,1,1,0, c_white, 1);
draw_sprite_ext(spr_numbers,tens,x-12,y,1,1,0, c_white, 1);
}


draw_set_color(c_white);
draw_text(x + 18, y - 4, "DBG");

if (spawn_mode == 0) { draw_set_color(c_yellow); } else { draw_set_color(c_white); }
draw_text(x + 18, y + 14, "ENEMY");
if (spawn_mode == 1) { draw_set_color(c_yellow); } else { draw_set_color(c_white); }
draw_text(x + 18, y + 28, "REWARD");
if (spawn_mode == 2) { draw_set_color(c_yellow); } else { draw_set_color(c_white); }
draw_text(x + 18, y + 42, "DOCK");

draw_set_color(c_white);
switch (enemy_type_id)
{
case 1: draw_text(x + 84, y + 14, "BASIC"); break;
case 2: draw_text(x + 84, y + 14, "RAPID"); break;
case 3: draw_text(x + 84, y + 14, "SWARM"); break;
case 4: draw_text(x + 84, y + 14, "HEAVY"); break;
case 5: draw_text(x + 84, y + 14, "SHIELD"); break;
case 6: draw_text(x + 84, y + 14, "LONGSHOT"); break;
}

switch (reward_type_id)
{
case 1: draw_text(x + 84, y + 28, "ARMOR"); break;
case 2: draw_text(x + 84, y + 28, "POWER"); break;
case 3: draw_text(x + 84, y + 28, "FIRE SPD"); break;
case 4: draw_text(x + 84, y + 28, "SHIELD"); break;
}

draw_set_color(c_aqua);
switch (path_mode)
{
case 0:
draw_text(x + 18, y + 60, "PATH STR");
break;
case 1:
draw_text(x + 18, y + 60, "PATH U/D");
break;
case 2:
draw_text(x + 18, y + 60, "PATH D/U");
break;
case 3:
draw_text(x + 18, y + 60, "PATH ROT");
break;
case 4:
draw_text(x + 18, y + 60, "PATH RT2");
break;
case 5:
draw_text(x + 18, y + 60, "PATH PEAK");
break;
}

draw_set_color(c_lime);
draw_rectangle(room_width - 74, 2, room_width - 4, 20, 1);
draw_text(room_width - 62, 4, "SPAWN");

if (spawn_mode == 0)
{
draw_set_color(c_lime);
draw_circle(room_width - 24, spawn_target_y, 3, 0);
draw_circle(room_width - 24, spawn_target_y, 4, 1);
}

var legend_x = 182;
var legend_y = 20;

draw_set_color(c_white);
draw_rectangle(legend_x, legend_y, legend_x + 148, legend_y + 84, 1);
draw_text(legend_x + 4, legend_y + 4, "DEBUG");

switch (spawn_mode)
{
case 0:
draw_text(legend_x + 4, legend_y + 18, "MODE: ENEMY");
break;
case 1:
draw_text(legend_x + 4, legend_y + 18, "MODE: REWARD");
break;
case 2:
draw_text(legend_x + 4, legend_y + 18, "MODE: DOCK");
break;
}

switch (enemy_type_id)
{
case 1: draw_text(legend_x + 4, legend_y + 32, "ENEMY: BASIC"); break;
case 2: draw_text(legend_x + 4, legend_y + 32, "ENEMY: RAPID"); break;
case 3: draw_text(legend_x + 4, legend_y + 32, "ENEMY: SWARM"); break;
case 4: draw_text(legend_x + 4, legend_y + 32, "ENEMY: HEAVY"); break;
case 5: draw_text(legend_x + 4, legend_y + 32, "ENEMY: SHIELD"); break;
case 6: draw_text(legend_x + 4, legend_y + 32, "ENEMY: LONGSHOT"); break;
}

switch (reward_type_id)
{
case 1: draw_text(legend_x + 4, legend_y + 46, "REWARD: ARMOR"); break;
case 2: draw_text(legend_x + 4, legend_y + 46, "REWARD: POWER"); break;
case 3: draw_text(legend_x + 4, legend_y + 46, "REWARD: FIRE SPD"); break;
case 4: draw_text(legend_x + 4, legend_y + 46, "REWARD: SHIELD"); break;
}

switch (path_mode)
{
case 0: draw_text(legend_x + 4, legend_y + 60, "PATH: STR"); break;
case 1: draw_text(legend_x + 4, legend_y + 60, "PATH: U/D"); break;
case 2: draw_text(legend_x + 4, legend_y + 60, "PATH: D/U"); break;
case 3: draw_text(legend_x + 4, legend_y + 60, "PATH: ROT"); break;
case 4: draw_text(legend_x + 4, legend_y + 60, "PATH: RT2"); break;
case 5: draw_text(legend_x + 4, legend_y + 60, "PATH: PEAK"); break;
}

if (rotate_counter > 0 )
{

if (track_number > actual_number)
{
draw_sprite_part(spr_numbers,ones,0,0+rotate_counter,11,15-rotate_counter,x,y);
draw_sprite_part(spr_numbers,ones_new,0,0,11, 1+ rotate_counter,x,y+(15-rotate_counter));
draw_sprite_part(spr_numbers,tens,0,0+rotate_counter,11,15-rotate_counter,x-12,y);
draw_sprite_part(spr_numbers,tens_new,0,0,11, 1+ rotate_counter,x-12,y+(15-rotate_counter));
}
else
{
draw_sprite_part(spr_numbers,ones_new,  0, 15-rotate_counter, 11,  1+rotate_counter,x,    y);
draw_sprite_part(spr_numbers,ones,      0,0, 11, 15-rotate_counter,x,    y+1+(rotate_counter));
draw_sprite_part(spr_numbers,tens,      0,15-rotate_counter, 11, 1+rotate_counter,x-12, y                   );
draw_sprite_part(spr_numbers,tens_new,  0,0,                11,  15-rotate_counter,x-12, y+1+rotate_counter);
}


}
