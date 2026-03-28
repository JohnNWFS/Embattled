/// @description stay with player
if (instance_exists(obj_player))
{
x = obj_player.x-10;
y = obj_player.y+2;

}
if (!instance_exists(obj_player) || hp <=0)
{
if (instance_exists(obj_player)) { obj_player.my_shield = -1; }
instance_destroy();
}

image_alpha = hp/hp_original;//lighten shield as it approaches destruction




