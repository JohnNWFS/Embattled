/// @description scr_spawn_prize(percent,source [0=enemy,1=far right],special=1);
/// @param percent
/// @param source [0=enemy
/// @param 1=far right]
/// @param special=1
function scr_spawn_prize() {
	//random chance to spawn a prize - higher the wave the better the prize
	var my_percent = argument[0];
	var my_location_spawn = argument[1];
	var my_special = argument[2];

	var this_x = x;
	var this_y = y;
	if (my_location_spawn == 1)
	{
	    x = room_width -1;
	    y = irandom_range(room_height/2,irandom_range(-32,32));
	}

	if (irandom_range(1,100) < my_percent) //% based on enemy setup
	{
	//armor increase most common prize
	switch(irandom_range(1,4))
	{
	    case 1:
	    var test = instance_create(x,y,obj_armor_bonus);
	    test.increase_armor = 20;
	    break;
   
	    case 2:
	    var test = instance_create(x,y,obj_power_bonus);
	    test.increase_shot_power = 1;
	    break;

	    case 3:
	    var test = instance_create(x,y,obj_shot_speed_bonus);
	    test.increase_shot_speed = -2;
	    break;

	    case 4:
	    var test = instance_create(x,y,obj_shield_bonus);
	    test.add_a_shield = 1;    
            
	default:
	break;
	}
	    with(test)
	    {
	    move_towards_point(-64,room_height/2 + irandom_range(-64,64),irandom_range(1,3));
	    }
	    if (my_special == 1)
	    {
	        test.word_to_use = 3; //use white reward and attach to coin
	        show_debug_message("test.word_to_use: "  + string(test.word_to_use));
	        }
    
	}



}
