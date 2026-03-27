/// @description scr_draw_a_starfield()
function scr_draw_a_starfield() {
	for (i = 0; i < room_height/32;i++)
	{
	    for (j = 0; j < room_width/32;j++)
	    {
	    tile_add(bg_starfield,irandom_range(0,9)*32,irandom_range(0,9)*32,32,32,j*32,i*32,10000);
	    }

	}



}
