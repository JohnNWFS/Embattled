/// @description turn tutorial on/off
if (global.tutorial == 0 && image_index = 0)
{
    global.tutorial = 1;
    image_index = 1;
    obj_set_debug.image_index = 0;
}
else
{
    global.tutorial = 0;
    image_index = 0;

}

