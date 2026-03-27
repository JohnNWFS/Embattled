/// @description quickly fade
if (image_alpha > .05)
{
image_alpha -= .05;
letters_alpha = image_alpha;
alarm[1] = 1;
}
else
{
alarm[0] = 1;
}

