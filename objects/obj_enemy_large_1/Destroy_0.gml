/// @description destroy turrets
if (instance_exists(turret_1)) { with(turret_1) {instance_destroy();} }
if (instance_exists(turret_2)) { with(turret_2) {instance_destroy();} }
scr_fx_burst("explode_large", x, y, 1);
scr_sfx("explode_large");


