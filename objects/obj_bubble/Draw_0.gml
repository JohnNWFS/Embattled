/// @description draw text when needed
draw_self();
if (my_message <> "")
{

if (letters_xscale == 0) {letters_xscale =.75;}
if (letters_yscale == 0) {letters_yscale =.75;}



scr_bubble_text(my_message,letters_xscale,letters_yscale,my_xoffset,my_yoffset,letters_x_offset,letters_y_offset,letters_alpha); 
}

