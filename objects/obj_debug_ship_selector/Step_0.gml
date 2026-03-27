/// @description get mouse actions and modify as needed
if (mouse_check_button_pressed(mb_left) && mouse_x <= bbox_right && mouse_x >= bbox_left)
    {
    mouse_selected = 1;
    mouse_selected_x = mouse_x;
    mouse_selected_y = mouse_y;
    }

if (mouse_check_button_released(mb_right))
    {
    mouse_selected = 0;
    }

    track_number = new_number;
if (mouse_y > mouse_selected_y && mouse_selected == 1 && mouse_y <= bbox_bottom && mouse_y >= bbox_top)
    {
    if(new_number - 1 > 0)
        {
            new_number -= 1;
    
        if (new_number < 10) 
        {
        ones_new = new_number;
        ones = new_number +1;
        tens_new = 0;
        if (new_number + 1 == 10) {tens = 1;}
        }
        if (new_number > 10)
        {
            ones_new = new_number mod 10;
            ones = ones_new div 10;
            tens_new = floor(new_number/10);
            tens = floor((new_number+1)/10)
        }
        if(new_number = 10)
        {
        ones_new = 0;
        ones = 1;
        tens_new = 1;
        tens = 1;
        }
            
        alarm[0] = rotation_speed;
        }
mouse_selected = 0;

    }

if (mouse_y < mouse_selected_y  && mouse_selected == 1 && mouse_y <= bbox_bottom && mouse_y >= bbox_top)
    {
    if (new_number + 1 < 100)
    {
    new_number += 1;
    if (new_number < 10) 
    {
    ones_new = new_number;
    ones = new_number -1;
    tens = 0;
    tens_new = 0;
    }
    if (new_number > 10)
    {
        ones_new = new_number mod 10;
        ones = ones_new div 10;
        tens_new = floor(new_number/10);
        tens = floor((new_number-1)/10)
    }
    if(new_number == 10)
    {
    ones_new = 0;
    ones = 9;
    tens_new = 1;
    tens = 0;
    }
    
    alarm[0] = rotation_speed;
    
    }
    mouse_selected = 0;
    }
    
if (rotate_counter == 0)
{
    if(actual_number < 10)
    {
        ones = actual_number;
        tens = 0;
    }
    if(actual_number == 10)
    {
        ones = 0;
        tens = 1;
    }
    if (actual_number > 10)
    {
        ones = actual_number mod 10;
        tens = floor((actual_number)/10)    
    }
}
//    show_debug_message(string(tens) + ":" + string(ones));


