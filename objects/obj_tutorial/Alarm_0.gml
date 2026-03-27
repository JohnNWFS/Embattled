/// @description Go through Tutorial steps
my_message = "";
tutorial_step += 1;
switch (tutorial_step)
{
case 1:
var bubble = instance_create(obj_player.x,obj_player.y-60,obj_bubble);
with (bubble)
{
letters_x_offset = 0;
letters_y_offset = 0;
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -60;
my_life = 240;
my_message = "WELCOME TO|EMBATTLED!";
image_index = 1; //use tailess bubble
image_xscale = 1.75;
alarm[0]=240;
}
alarm[0]=240;
break;

case 2:
var bubble = instance_create(obj_player.x,obj_player.y-60,obj_bubble);
with (bubble)
{
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -60;
my_life = 240;
my_message = "THIS IS YOU";
image_index = 2; //use tailed bubble pointing down left
image_xscale = 1.85;
alarm[0]=240;
}
alarm[0]=240;
break;

case 3:
var bubble = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
with (bubble)
{
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -70;
my_life = 1800;
my_message = "USE W OR|UP TO|GO UP";
image_index = 2; 
image_xscale = 1.75;
image_yscale = 1.2;

alarm[0]=240;
}
alarm[0]=240;
break;

case 4:
var bubble = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
with (bubble)
{
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -70;
my_life = 1800;
my_message = "USE S OR|DOWN TO|GO DOWN";
image_index = 2; 
image_yscale = 1.2;
image_xscale = 1.75;
alarm[0]=240;
}
alarm[0]=240;
break;

case 5:
var bubble = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
with (bubble)
{
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -70;
my_life = 1800;
my_message = "USE A OR|LEFT TO GO|LEFT";
image_index = 2; 
image_yscale = 1.2;
image_xscale = 1.75;
alarm[0]=240;
}
alarm[0]=240;
break;

case 6:
var bubble = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
with (bubble)
{
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -70;
my_life = 1800;
my_message = "USE D OR|RIGHT TO|GO RIGHT";
image_index = 2; 
image_yscale = 1.2;
image_xscale = 1.75;
alarm[0]=240;
}
alarm[0]=240;
break;

case 7:
var bubble = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
with (bubble)
{
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -70;
my_life = 1800;
my_message = "USE SPACE|OR ACTION|TO FIRE"
image_index = 2; 
image_yscale = 1.2;
image_xscale = 1.75;
alarm[0]=240;
}
alarm[0]=240;
break;

case 8:
var bubble = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
with (bubble)
{
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -70;
my_life = 1800;
my_message = "I WILL SEND|AN ENEMY|YOUR WAY"
image_index = 1; 
image_yscale = 1.2;
image_xscale = 1.85;
alarm[0]=180;
}

{
var my_enemy = instance_create(room_width+32,room_height/2,obj_enemy_1);
var bubble2 = instance_create(my_enemy.x,my_enemy.y-70,obj_bubble);
with (my_enemy) {move_towards_point(-64,y,2);}
with(bubble2){
    my_attached = my_enemy;
    my_xoffset = 0;
    my_yoffset = -70;
    my_life = 1800;
    my_message = "I'M AN|ENEMY|SHOOT ME"
    my_enemy.alarm[1] = 160;
    my_enemy.enemy_value = 10;
    image_index = 1; 
    image_yscale = 1.2;
    image_xscale = 1.75;
    alarm[0]=240;
}
}

alarm[0]=220;
break;

case 9:
my_enemy = instance_find(obj_enemy_1,0);

if (instance_exists(my_enemy))
    {    
    tutorial_step -=1;
    var bubble2 = instance_create(my_enemy.x,my_enemy.y-70,obj_bubble);
    with(bubble2)
        {
            my_attached = my_enemy;
            my_xoffset = 0;
            my_yoffset = -70;
            my_life = 1800;
            my_message = "I'M AN|ENEMY|SHOOT ME"
            my_enemy.a_flag = 1;
            image_index = 1; 
            image_yscale = 1.2;
            image_xscale = 1.75;
            alarm[0]=240;
        }
    }
else
{
var bubble = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
    with (bubble)
    {
    my_attached = obj_player;
    my_xoffset = 0;
    my_yoffset = -70;
    my_life = 1800;
    my_message = "YOU GET POINTS|IF YOU DESTROY|ENEMIES";
    image_index = 1; 
    image_yscale = 1.2;
    image_xscale = 2.4;
    alarm[0]=240;
    }

alarm[0]=200;
}
break;

case 10:
    var bubble1 = instance_create(32,room_height - 84,obj_bubble);
    with (bubble1)
    {
    my_attached = -1;
    my_xoffset = 0;
    my_yoffset = 0;
    my_life = 1800;
    my_message = "YOUR SCORE|APPEARS HERE";
    image_index = 0; 
    image_yscale = 1;
    image_xscale = 2;
    alarm[0]=240;
    }
    alarm[0]=240;
break;

case 11:
var bubble = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
with (bubble)
{
my_attached = obj_player;
my_xoffset = 0;
my_yoffset = -70;
my_life = 1800;
my_message = "YOU LOSE ARMOR|IF YOUR SHIP|HITS ENEMIES";
image_index = 2; 
image_yscale = 1.2;
image_xscale = 2.4;
alarm[0]=240;
}
alarm[0]=240;
break;

case 12:
var my_enemy = instance_create(room_width+32,room_height/2,obj_enemy_1);
var bubble2 = instance_create(my_enemy.x,my_enemy.y-70,obj_bubble);
with (my_enemy) {move_towards_point(-64,y,2);}
with(bubble2){
    my_attached = my_enemy;
    my_xoffset = 0;
    my_yoffset = -70;
    my_life = 1800;
    my_message = "CRASH INTO|ME"
    my_enemy.alarm[1] = 180;
    my_enemy.enemy_value = 10;
    image_index = 1; 
    image_yscale = 1.2;
    image_xscale = 1.75;
    alarm[0]=240;
}
    alarm[0]=240;
break;

case 13:
my_enemy = instance_find(obj_enemy_1,0);
if (instance_exists(my_enemy))
    {    
    tutorial_step -=1;
    var bubble2 = instance_create(my_enemy.x,my_enemy.y-70,obj_bubble);
    with(bubble2)
        {
            my_attached = my_enemy;
            kill_me = 1;
            my_xoffset = 0;
            my_yoffset = -70;
            my_life = 1800;
            my_message = "CRASH INTO|ME"
            my_enemy.a_flag = 1;
            image_index = 1; 
            image_yscale = 1.2;
            image_xscale = 1.75;
            alarm[0]=240;
        }

}
alarm[0]=200;

break;

case 14:
    var bubble2 = instance_create(obj_player.x,obj_player.y-70,obj_bubble);
    with(bubble2)
        {
            my_attached = obj_player;
            my_xoffset = 0;
            my_yoffset = -70;
            my_life = 1800;
            my_message = "ENEMY SHOTS|ALSO REDUCE|ARMOR"
            image_index = 1; 
            image_yscale = 1.2;
            image_xscale = 1.85;
            alarm[0]=240;
        }
alarm[0]=200;
break;

case 15:
    var bubble1 = instance_create(250,room_height - 94,obj_bubble);
    with (bubble1)
    {
    my_attached = -1;
    my_xoffset = 0;
    my_yoffset = 0;
    my_life = 1800;
    my_message = "YOUR ARMOR|STRENGTH|APPEARS HERE";
    image_index = 0; 
    image_yscale = 1.2;
    image_xscale = 2;
    alarm[0]=240;
    }
    alarm[0]=240;
break;

case 16:
    var bubble1 = instance_create(250,room_height - 94,obj_bubble);
    with (bubble1)
    {
    my_attached = -1;
    my_xoffset = 0;
    my_yoffset = 0;
    my_life = 1800;
    my_message = "I HAVE|REDUCED YOUR|ARMOR BY HALF";
    obj_player.hp = 50;
    image_index = 0; 
    image_yscale = 1.2;
    image_xscale = 2.4;
    alarm[0]=240;
    }
    alarm[0]=240;
break;


case 17:
    var bubble1 = instance_create(250,room_height - 94,obj_bubble);
    with (bubble1)
    {
    my_attached = -1;
    my_xoffset = 0;
    my_yoffset = 0;
    my_life = 1800;
    my_message = "AN ARMOR PRIZE|RESTORES ARMOR";
    image_index = 0; 
    image_yscale = 1.2;
    image_xscale = 2.3;
    alarm[0]=240;
    }
    var prize = instance_create(room_width-1,obj_player.y,obj_armor_bonus);
    with (prize)
    {
        increase_armor = 25;
        move_towards_point(obj_player.x, obj_player.y, 4);
        chase_player = 1;
        }
    alarm[0]=240;
break;

case 18:
    var bubble1 = instance_create(obj_player.x,obj_player.y - 94,obj_bubble);
    with (bubble1)
    {
    my_attached = obj_player;
    my_xoffset = 0;
    my_yoffset = -94;
    my_life = 1800;
    my_message = "A POWER PRIZE|INCREASES SHOT|POWER";
    image_index = 1; 
    image_yscale = 1.2;
    image_xscale = 2.4;
    alarm[0]=240;
    }
    alarm[0]=200;
break;

case 19:
    var bubble1 = instance_create(350,room_height - 94,obj_bubble);
    with (bubble1)
    {
    my_attached = -1;
    my_xoffset = 0;
    my_yoffset = 0;
    my_life = 1800;
    my_message = "THESE CIRCLES|SHOW YOUR|SHOT POWER";
    image_index = 0; 
    image_yscale = 1.2;
    image_xscale = 2.4;
    alarm[0]=230;
    }
    alarm[0]=240;
break;

case 20:
    var bubble1 = instance_create(350,room_height - 94,obj_bubble);
    with (bubble1)
    {
    my_attached = -1;
    my_xoffset = 0;
    my_yoffset = 0;
    my_life = 1800;
    my_message = "INCREASED SHOT|POWER LASTS A|SHORT TIME";
   // obj_player.hp = 50;
    image_index = 0; 
    image_yscale = 1.2;
    image_xscale = 2.4;
    alarm[0]=230;
    }
    alarm[0]=240;
break;

case 21:
    var bubble1 = instance_create(250,room_height - 94,obj_bubble);
    with (bubble1)
    {
    my_attached = -1;
    my_xoffset = 0;
    my_yoffset = 0;
    my_life = 1800;
    my_message = "WATCH THE CIRCLES|AS I ADD POWER";
    image_index = 1; 
    image_yscale = 1.2;
    image_xscale = 3;
    alarm[0]=240;
    }
    var prize = instance_create(room_width-16,obj_player.y,obj_armor_bonus);
    with (prize)
        {increase_shot_power = 1;
         move_towards_point(obj_player.x, obj_player.y, 4);
         chase_player = 1;
         }
    var prize1 = instance_create(room_width-1,obj_player.y,obj_armor_bonus);
    with (prize1)
        {increase_shot_power = 1;
         move_towards_point(obj_player.x, obj_player.y, 4);
         chase_player = 1;
         }
        
    alarm[0]=240;
break;

case 22:
    var bubble1 = instance_create(350,room_height - 94,obj_bubble);
    with (bubble1)
    {
    my_attached = obj_tutorial;
    my_xoffset = 100;
    my_yoffset = 96;
    my_life = 1800;
    my_message = "YOUR POWER|GOES BACK TO ONE|OVER TIME";
    //obj_player.hp = 50;
    image_index = 1; 
    image_yscale = 1.2;
    image_xscale = 3;
    alarm[0]=230;
    }
    alarm[0]=240;
break;

case 23:
    var bubble1 = instance_create(200,32,obj_bubble);
    with (bubble1)
    {
    my_attached = -1;
    my_xoffset = 0;
    my_yoffset = 0;
    my_life = 1800;
    my_message = "THE WAVE COUNTER|SHOWS YOUR|PROGRESS";
    obj_player.hp = 50;
    image_index = 1; 
    image_yscale = 1.2;
    image_xscale = 3;
    alarm[0]=230;
    }
    alarm[0]=240;
break;

case 24:
    var bubble1 = instance_create(100,25,obj_bubble);
    with (bubble1)
    {
    my_attached = obj_tutorial;
    my_xoffset = 150;
    my_yoffset = 24;
    my_life = 1800;
    my_message = " THAT CONCLUDES THE| TUTORIAL| IN A MOMENT I| WILL START THE GAME| THANKS FOR PLAYING|  EMBATTLED";
    obj_player.hp = 50;
    image_index = 1; 
    image_yscale = 2.3;
    image_xscale = 3.3;
    alarm[0]=420;
    }
    obj_player.visible = 0;
    alarm[0]=420;
break;

case 25:
global.tutorial = 0;
obj_player.hp = obj_player.max_hp;
score = 0;
instance_destroy();

break;

default:
break;
}


