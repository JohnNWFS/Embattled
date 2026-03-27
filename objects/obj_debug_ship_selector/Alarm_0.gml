/// @description rotate number
ones_height_counter = 0;
tens_height_counter = 0;

//show_debug_message(rotate_counter);

rotate_counter += 1;

if (rotate_counter < 15)
    {
        alarm[0] = rotation_speed;
    }

if (rotate_counter >= 15)
    {
        ones = ones_new;
        tens = tens_new;
        rotate_counter = 0;
        actual_number = new_number;
        alarm[0] = -1;
    }

