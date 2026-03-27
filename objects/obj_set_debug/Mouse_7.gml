/// @description turn tutorial on/off
if (global.debug == 0 && image_index = 0)
{
    global.debug = 1;
    global.tutorial = 0;
    obj_set_tutorial.image_index = 0;
    image_index = 1;
}
else
{
    global.debug = 0;
    image_index = 0;

}

