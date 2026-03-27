/// @description Set variables and waves

test = 0;
trigger = 1;
wave = -.5; // point 5 increments signify docking / transition stages 
wave_increment = 1;
path_type = "";
time_trigger = 300;
score_counter =0; //every few seconds, increment score (see step 1)
//waves = number of enemies;

path_straight = path_add();
path_add_point(path_straight,room_width+64,room_height/2,4);
path_add_point(path_straight,-500,room_height/2,4);

path_up_down = path_add();
path_add_point(path_up_down,room_width+64,room_height/2,4);
path_add_point(path_up_down,room_width*.8,(room_height/2-room_height/2*.15),4);
path_add_point(path_up_down,room_width*.6,(room_height/2-room_height/2*.15),4);
path_add_point(path_up_down,room_width/2,room_height/2,4);
path_add_point(path_up_down,room_width*.4,(room_height/2+room_height/2*.15),4);
path_add_point(path_up_down,room_width*.2,(room_height/2+room_height/2*.15),4);
path_add_point(path_up_down,-500,room_height/2,4);

path_down_up = path_add();
path_add_point(path_down_up,room_width+64,room_height/2,4);
path_add_point(path_down_up,room_width*.8,(room_height/2-room_height/2*.15),4);
path_add_point(path_down_up,room_width*.6,(room_height/2-room_height/2*.15),4);
path_add_point(path_down_up,room_width/2,room_height/2,4);
path_add_point(path_down_up,room_width*.4,(room_height/2+room_height/2*.15),4);
path_add_point(path_down_up,room_width*.2,(room_height/2+room_height/2*.15),4);
path_add_point(path_down_up,-500,room_height/2,4);

path_rotate_enemy = path_add();
path_add_point(path_rotate_enemy,room_width+64,room_height/2,4);
path_add_point(path_rotate_enemy,room_width*.8,room_height/2-room_height*.1,4);
path_add_point(path_rotate_enemy,room_width*.7,room_height/2-room_height*.1,4);
path_add_point(path_rotate_enemy,room_width*.6,room_height/2+room_height*.1,4);
path_add_point(path_rotate_enemy,room_width*.5,room_height/2+room_height*.1,4);
path_add_point(path_rotate_enemy,room_width*.4,room_height/2-room_height*.1,4);
path_add_point(path_rotate_enemy,room_width*.3,room_height/2-room_height*.1,4);
path_add_point(path_rotate_enemy,room_width*.2,room_height/2+room_height*.1,4);
path_add_point(path_rotate_enemy,room_width*.1,room_height/2+room_height*.1,4);
path_add_point(path_rotate_enemy,-500,room_height/2,4);

path_rotate_enemy_2 = path_add();
path_add_point(path_rotate_enemy_2,room_width+64,room_height/2,4);
path_add_point(path_rotate_enemy_2,room_width*.8,room_height/2+room_height*.1,4);
path_add_point(path_rotate_enemy_2,room_width*.8,room_height/2+room_height*.1,4);
path_add_point(path_rotate_enemy_2,room_width*.6,room_height/2-room_height*.1,4);
path_add_point(path_rotate_enemy_2,room_width*.5,room_height/2-room_height*.1,4);
path_add_point(path_rotate_enemy_2,room_width*.4,room_height/2+room_height*.1,4);
path_add_point(path_rotate_enemy_2,room_width*.3,room_height/2+room_height*.1,4);
path_add_point(path_rotate_enemy_2,room_width*.2,room_height/2-room_height*.1,4);
path_add_point(path_rotate_enemy_2,room_width*.1,room_height/2-room_height*.1,4);
path_add_point(path_rotate_enemy_2,-500,room_height/2,4);


path_high_peaks = path_add();
path_add_point(path_high_peaks,room_width+64,room_height/2,4);
path_add_point(path_high_peaks,room_width*.9,room_height/2-room_height*.2,4);
path_add_point(path_high_peaks,room_width*.8,room_height/2-room_height*.2,4);
path_add_point(path_high_peaks,room_width*.7,room_height/2+room_height*.2,4);
path_add_point(path_high_peaks,room_width*.6,room_height/2+room_height*.2,4);
path_add_point(path_high_peaks,room_width*.4,room_height/2-room_height*.2,4);
path_add_point(path_high_peaks,room_width*.3,room_height/2-room_height*.2,4);
path_add_point(path_high_peaks,room_width*.2,room_height/2+room_height*.2,4);
path_add_point(path_high_peaks,room_width*.1,room_height/2+room_height*.2,4);
path_add_point(path_high_peaks,-500,room_height/2,4);


//number and type, and each x/y position
// # enemies of type t starting at position x and position y moving at speed z firing at rate r and pattern p
// wave 1
//enemies 1
//type 1 (type 1 hp = 1)
//x = room_width + 64
//y = room_height / 2
//speed = 4;
//


