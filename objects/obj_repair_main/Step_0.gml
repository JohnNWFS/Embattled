/// @description keep player from hitting and others
//if (collision_rectangle(2,4,58,10,obj_player,1,0))
var inst = instance_place(floor(x),floor(y),obj_player_parent); //is player hitting me?
if (inst) {

        var player_id = obj_player_parent;

        if (x < player_id.x) { player_id.x -=2;} //get player off of me

        if (x > player_id.x) { player_id.x +=2;}//get player off of me

        if (y < player_id.y) { player_id.y +=2;} //get player off of me

        if (y > player_id.y) { player_id.y -=2;} //get player off of me
        
            obj_player.hp -= 1;
            scr_draw_pos_neg(-1,player_id,"armor");
            alarm[0] = 15;
    }

    if (obj_repair_dock.show_docked_message==1 && x < -64)
{
    instance_destroy();
}

if (x >= stop_at_x - 10 && obj_repair_dock.can_dock == 1)
{
friction = .05 ;
}

if (xprevious == x && friction = .05 && obj_wave_handler.wave == 0)
{
obj_player.x = x+14;
obj_player.y = y + 7;

}

if (xprevious == x && friction = .05 )
{
repair_dock.visible = 1;
}



