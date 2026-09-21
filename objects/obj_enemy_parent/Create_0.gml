/// @description variables and setup
speed = 1;
image_index =0;
image_speed = 0;
enemy_type = 0;  //not yet used
enemy_speed_x = 1; //captures expected x speed
enemy_speed_y = 0; //captures expected y speed
enemy_hp = 10; //how many hitpoints this enemy has
enemy_speed_counter = 0; //depricated
enemy_value = 0; //captures points this enemy is worth
has_shield =0; //do I have a shield?
my_shield = 0; //what is my shield ID?
spawned_shield = 0; //did the shield spawn for enemy
shield_strength = 0; //hp the shield protects
firing = 0; //Does this ship shoot? If so = 1
my_fire_speed = 60; //how many frames pass between shots
my_shot_speed = 6; //how fast the shot fires
shot_type = obj_enemy_basic_shot; //what type of shot
my_shot_x_target = 0; //the target towards which the shot fires x
my_shot_y_target = 0; //the target towards which the shot fires y
my_power = 0; //power of weapon
enemy_may_have_prize = 0; //if 1, this enemy may spawn a prize
centered_firing = 0; //for turrets, change where shots come from
a_flag = 0; //used in tutorial to check status
//enemy_image_speed?
//enemy_sprite?
player = 0; //variable to get player id
my_explosion = obj_enemy_explosion_1;
my_follower = 0; //used with tutorial
prize_percent = 10; //10% chance by default (whole number, not decimal)
kamikaze = 0;

