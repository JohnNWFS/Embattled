/// @description stay with player
event_inherited();
if (instance_exists(my_owner))
{
x = my_owner.x-10;
y = my_owner.y+2;

}
if (!object_exists(my_owner) || hp <=0)
{
instance_destroy();
}

image_alpha =2* hp/hp_original;//lighten shield as it approaches destruction

//show_debug_message("my owner " + string(my_owner) +" image_alpha " + string(image_alpha));



