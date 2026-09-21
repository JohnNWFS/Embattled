/// @description Create shared particle types once.
function scr_fx_init() {
	if (variable_global_exists("__fx_ready") && global.__fx_ready) {
		return;
	}

	global.__fx_system = part_system_create();
	part_system_depth(global.__fx_system, -200);

	global.__fx_spark = part_type_create();
	part_type_shape(global.__fx_spark, pt_shape_flare);
	part_type_size(global.__fx_spark, 0.15, 0.5, -0.01, 0);
	part_type_speed(global.__fx_spark, 1.2, 4.5, -0.05, 0);
	part_type_direction(global.__fx_spark, 0, 360, 0, 0);
	part_type_life(global.__fx_spark, 8, 18);
	part_type_alpha3(global.__fx_spark, 1, 0.75, 0);
	part_type_blend(global.__fx_spark, true);

	global.__fx_smoke = part_type_create();
	part_type_shape(global.__fx_smoke, pt_shape_smoke);
	part_type_size(global.__fx_smoke, 0.3, 0.85, 0.01, 0);
	part_type_speed(global.__fx_smoke, 0.15, 0.9, 0, 0);
	part_type_direction(global.__fx_smoke, 0, 360, 0, 0);
	part_type_gravity(global.__fx_smoke, 0.02, 270);
	part_type_life(global.__fx_smoke, 18, 36);
	part_type_alpha2(global.__fx_smoke, 0.55, 0);
	part_type_colour1(global.__fx_smoke, c_gray);

	global.__fx_flash = part_type_create();
	part_type_shape(global.__fx_flash, pt_shape_spark);
	part_type_size(global.__fx_flash, 0.35, 1.1, -0.04, 0);
	part_type_speed(global.__fx_flash, 0.01, 0.08, 0, 0);
	part_type_life(global.__fx_flash, 5, 12);
	part_type_alpha2(global.__fx_flash, 0.95, 0);
	part_type_blend(global.__fx_flash, true);

	global.__fx_ring = part_type_create();
	part_type_shape(global.__fx_ring, pt_shape_circle);
	part_type_size(global.__fx_ring, 0.2, 0.35, 0.08, 0);
	part_type_speed(global.__fx_ring, 0, 0, 0, 0);
	part_type_life(global.__fx_ring, 8, 14);
	part_type_alpha2(global.__fx_ring, 0.7, 0);
	part_type_blend(global.__fx_ring, true);

	global.__fx_muzzle = part_type_create();
	part_type_shape(global.__fx_muzzle, pt_shape_flare);
	part_type_size(global.__fx_muzzle, 0.15, 0.35, -0.03, 0);
	part_type_speed(global.__fx_muzzle, 0.4, 1.2, 0, 0);
	part_type_direction(global.__fx_muzzle, -20, 20, 0, 0);
	part_type_life(global.__fx_muzzle, 4, 8);
	part_type_alpha2(global.__fx_muzzle, 1, 0);
	part_type_blend(global.__fx_muzzle, true);

	global.__fx_ready = true;
	global.shake_frames = 0;
	global.shake_mag = 0;
}
