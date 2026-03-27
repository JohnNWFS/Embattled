/// @description scr_bubble_text(text,letters xscale,letters yscale,x offset,y offset,letters_xoffset,letters_yoffset,letters alpha)
/// @param text
/// @param letters xscale
/// @param letters yscale
/// @param x offset
/// @param y offset
/// @param letters_xoffset
/// @param letters_yoffset
/// @param letters alpha
function scr_bubble_text() {
	var my_message = argument[0];
	var my_letters_xscale = argument[1];
	var my_letters_yscale = argument[2];
	var x__offset = argument[3];
	var y__offset = argument[4];
	var my_letters_x_offset = argument[5];
	var my_letters_y_offset = argument[6];
	var my_letters_alpha = argument[7]
	var my_row = 0;
	var my_col = 0;

	for (i=1; i<string_length(my_message)+1; i++)
	{
	//    show_debug_message(string(string_byte_at(my_message,i)) + " " + string_char_at(my_message,i));
	    if (string_byte_at(my_message,i) < 91 && string_byte_at(my_message,i) > 64)
	        {
	            draw_sprite_ext(spr_letters,string_byte_at(my_message,i)-65,x + my_letters_x_offset + (my_col*10)+5, y + my_letters_y_offset + (my_row * 14)+5,my_letters_xscale,my_letters_yscale,0,c_white,my_letters_alpha);
	        }
	    if (string_byte_at(my_message,i) < 65) 
	        {
	            draw_sprite_ext(spr_symbols,string_byte_at(my_message,i)-32,x + my_letters_x_offset + (my_col*10)+5, y + my_letters_y_offset + (my_row * 14)+5,my_letters_xscale,my_letters_yscale,0,c_white,my_letters_alpha);
	        }        
	    if (string_byte_at(my_message,i) == 124) {my_row += 1; my_col = -1;}
	    my_col += 1;
	}





}
