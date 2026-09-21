/// @description handle rewards
if (variable_global_exists("shake_frames") && global.shake_frames > 0)
{
    global.shake_frames -= 1;
    var mag = global.shake_mag;
    camera_set_view_pos(view_camera[0], irandom_range(-mag, mag), irandom_range(-mag, mag));
    if (global.shake_frames <= 0)
    {
        camera_set_view_pos(view_camera[0], 0, 0);
    }
}

if (global.score > score_prize_goal)
{


scr_spawn_prize(100,1,1); //spawn a prize at exponentially higher scores
score_prize_goal += score_prize_increment;
score_prize_increment += score_prize_increment;

}


