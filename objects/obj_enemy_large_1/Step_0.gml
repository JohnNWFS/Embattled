/// @description Handle movement and turrets
event_inherited();
if (spawn_turrets == 0)
{
spawn_turrets = 1;
turret_1 = instance_create(x + 32, y + 16, obj_turret_1);
turret_1.my_parent = id;
turret_1.my_x_offset = 32;
turret_1.my_y_offset = 16;
turret_1.my_power = my_power;

turret_2 = instance_create(x + 32, y + 48, obj_turret_1);
turret_2.my_parent = id;
turret_2.my_x_offset = 32;
turret_2.my_y_offset = 48;
turret_2.my_power = my_power;

}

