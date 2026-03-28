/// @description handle rewards
if (global.score > score_prize_goal)
{


scr_spawn_prize(100,1,1); //spawn a prize at exponentially higher scores
score_prize_goal += score_prize_increment;
score_prize_increment += score_prize_increment;

}


