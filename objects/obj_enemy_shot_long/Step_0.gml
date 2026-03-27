/// @description capture shot position
event_inherited();
if (shot_length + 1 < 9)
{shot_length += 1;}

shot_position[1,1] = x;
shot_position[1,2] = y;

for (i = shot_length; i > 1 ; i--)
{
shot_position[i,1] = shot_position[i-1,1];
shot_position[i,2] = shot_position[i-1,2];
}


