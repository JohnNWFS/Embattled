/// @description for tutorial
//start tutorial up again when enemy destroyed if there's been a delay
if (global.tutorial == 1)
{

if (a_flag == 1)
    {
    if (instance_exists(obj_tutorial))
        {
        obj_tutorial.alarm[0] = 30;
        }
    }
}



