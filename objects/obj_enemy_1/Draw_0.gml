/// @description handle move info
draw_self();
if (yprevious > y) {image_index=1;}
if (yprevious < y) {image_index=2;}
if (yprevious == y) {image_index=0;}
//image_index = 2;
//show_debug_message("yprevious " + string(yprevious) + "y " + string(y));


