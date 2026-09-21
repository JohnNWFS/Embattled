/// @description scr_fx_burst(kind, xx, yy, scale)
function scr_fx_burst() {
	var kind = argument[0];
	var xx = argument[1];
	var yy = argument[2];
	var sc = (argument_count > 3) ? argument[3] : 1;

	scr_fx_init();
	var sys = global.__fx_system;
	var n = max(1, round(sc));

	switch (kind) {
		case "explode_small":
			part_particles_create_color(sys, xx, yy, global.__fx_flash, c_yellow, 1 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_orange, 8 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_red, 4 * n);
			part_particles_create(sys, xx, yy, global.__fx_smoke, 3 * n);
			break;
		case "explode_large":
			part_particles_create_color(sys, xx, yy, global.__fx_flash, c_white, 3 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_ring, c_orange, 2);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_yellow, 14 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_red, 10 * n);
			part_particles_create(sys, xx, yy, global.__fx_smoke, 8 * n);
			global.shake_frames = 10;
			global.shake_mag = 3;
			break;
		case "explode_player":
			part_particles_create_color(sys, xx, yy, global.__fx_flash, c_yellow, 2 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_red, 10 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_orange, 8 * n);
			part_particles_create(sys, xx, yy, global.__fx_smoke, 5 * n);
			global.shake_frames = 8;
			global.shake_mag = 2;
			break;
		case "explode_drone":
			part_particles_create_color(sys, xx, yy, global.__fx_flash, c_aqua, 1 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_white, 6 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_aqua, 4 * n);
			break;
		case "hit":
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_white, 3 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_yellow, 2 * n);
			break;
		case "muzzle":
			part_particles_create_color(sys, xx, yy, global.__fx_muzzle, c_aqua, 2 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_flash, c_white, 1);
			break;
		case "pickup":
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_lime, 4 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_flash, c_white, 1);
			break;
		case "dock":
			part_particles_create_color(sys, xx, yy, global.__fx_spark, c_aqua, 8 * n);
			part_particles_create_color(sys, xx, yy, global.__fx_ring, c_lime, 1);
			break;
	}
}
