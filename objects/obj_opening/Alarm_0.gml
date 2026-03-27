/// @description next point and letter
if (game_over_usage == 0)
{
current_point += 2;
if (current_point < max_point)
{
alarm[0] += point_speed;
}

if (current_point >= max_point)
{
    our_letter += 1;
    ds_list_clear(our_list);
    current_point = -1;
    list_prepped = 0;
}

switch (our_letter)
{

case 1: //"W"
if (list_prepped == 0)
{list_prepped = 1;

ds_list_add(our_list,5,8,5,9,4,9,3,10,2,9,1,8,1,7);
ds_list_add(our_list,1,6,2,6,3,5,4,5,5,6,6,6,7,6);
ds_list_add(our_list,8,7,8,8,9,9,9,10,10,11,10,12);
ds_list_add(our_list,10,13,10,14,11,15,11,16,11,17,11,18);
ds_list_add(our_list,12,19,12,20,13,21,13,22,13,23,14,24,15,25);
ds_list_add(our_list,16,25,17,25,18,24,18,24,19,23,19,22,18,22);
ds_list_add(our_list,17,22,20,23,21,24,20,23,21,24,22,24,23,24);
ds_list_add(our_list,24,23,25,22,25,21,26,20,26,19,25,18,25,17);
ds_list_add(our_list,25,16,25,15,25,14,25,13,24,12,23,11,23,10);
ds_list_add(our_list,23,9,22,8,22,7,22,6,21,6,21,5,20,5);
ds_list_add(our_list,20,4,20,3,20,2);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;



case 2: //"e"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,27,19,28,18,28,17,29,15,29,14,30,14,31,14);
ds_list_add(our_list,32,14,33,15,34,16,34,17,33,18,32,18);
ds_list_add(our_list,31,18,30,18,29,18,28,18,27,18,27,19);
ds_list_add(our_list,28,21,29,22,30,23,31,23,32,23,33,23);
ds_list_add(our_list,34,23,35,23,36,22,37,22);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 3: //"l"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,32,3,33,4,34,6,35,7,35,8,36,9,36,10);
ds_list_add(our_list,36,11,36,12,36,13,37,14,37,15,37,16);
ds_list_add(our_list,37,17,37,18,37,19,38,21,38,22,38,23);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 4: //"C"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,45,13,44,13,43,13,42,13,41,14,40,14);
ds_list_add(our_list,39,15,39,16,39,17,40,18,40,19,41,20);
ds_list_add(our_list,42,22,43,22,44,22,45,21,46,20);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 5: //"o"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,50,12,49,12,48,13,47,14,47,15,47);
ds_list_add(our_list,16,47,17,47,18,47,19,48,19,48,20);
ds_list_add(our_list,49,20,50,20,51,20,52,20,53,19,53,18,53,17);
ds_list_add(our_list,53,16,53,15,52,15,52,14,51,13,50,13,50,12);

max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 6: //"m"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,55,21,55,20,55,19,55,18,55,17,55,16);
ds_list_add(our_list,55,15,55,14,55,13,55,12,56,12,57,13);
ds_list_add(our_list,57,14,57,15,57,16,57,15,58,14,58,13);
ds_list_add(our_list,59,12,60,12,61,12,62,13,62,14,62,15);
ds_list_add(our_list,62,16,62,17,63,18,63,19);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 7: //"e"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,28+39,19-2,28+39,18-2,28+39,17-2,29+39,15-2,29+39,14-2,30+39,14-2,31+39,14-2);
ds_list_add(our_list,32+39,14-2,33+39,15-2,34+39,16-2,34+39,17-2,33+39,18-2,32+39,18-2);
ds_list_add(our_list,31+39,18-2,30+39,18-2,29+39,18-2,28+39,18-2,27+39,18-2,27+39,19-2);
ds_list_add(our_list,28+39,21-2,29+39,22-2,30+39,23-2,31+39,23-2,32+39,23-2,33+39,23-2);
ds_list_add(our_list,34+39,23-2,35+39,23-2,36+39,22-2,37+39,22-2,37+40,22-3);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 8: //"t"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,40,25,40,26,41,27,42,28,43);
ds_list_add(our_list,29,43,30,44,31,44,32,45,33,45,34,45,35);

max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 9: //cross the "t"
if (list_prepped == 0)
{list_prepped = 1;

ds_list_add(our_list,39,29,40,29,41,29,42,28,43,28,44,28);
ds_list_add(our_list,45,27,46,27);

max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;


case 10: //"o"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,50,12+15,49,12+15,48,13+15,47,14+15,47,15+15);
ds_list_add(our_list,47,16+15,47,17+15,47,18+15,47,19+15,48,19+15,48,20+15);
ds_list_add(our_list,49,20+15,50,20+15,51,20+15,52,20+15,53,19+15,53,18+15,53,17+15);
ds_list_add(our_list,53,16+15,53,15+15,52,15+15,52,14+15,51,13+15,50,13+15,50,12+15);

max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 11: //"E"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,25,36-5,24,36-5,23,36-5,22,36-5,21,36-5,20,36-5,19,36-5);
ds_list_add(our_list,18,37-5,17,38-5,17,39-5,17,40-5,17,41-5,18,42-5,19,43-5);
ds_list_add(our_list,20,43-5,21,43-5,22,43-5,19,43-5,19,44-5,18,45-5,18,46-5);
ds_list_add(our_list,18,47-5,18,48-5,18,49-5,18,50-5,19,51-5,20,52-5,21,53-5);
ds_list_add(our_list,22,53-3,23,53-3,24,53-5,25,53-5,26,53-5,27,52-5,28,51-5);
ds_list_add(our_list,29,50-5);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 12: //"m"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,55-23,21+28,55-23,20+28,55-23,19+28,55-23,18+28,55-23,17+28,55-23,16+28);
ds_list_add(our_list,55-23,15+28,55-23,14+28,55-23,13+28,55-23,12+28,56-23,12+28,57-23,13+28);
ds_list_add(our_list,57-23,14+28,57-23,15+28,57-23,16+28,57-23,15+28,58-23,14+28,58-23,13+28);
ds_list_add(our_list,59-23,12+28,60-23,12+28,61-23,12+28,62-23,13+28,62-23,14+28,62-23,15+28);
ds_list_add(our_list,62-23,16+28,62-23,17+28,63-23,18+28,63-23,19+28);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 13: //"b"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,36+2,30+4,37+2,31+4,38+2,32+4,38+2,33+4,39+2,34+4,39+2,35+4);
ds_list_add(our_list,40+2,36+4,40+2,37+4,40+2,38+4,40+2,39+4,41+2,40+2);
ds_list_add(our_list,41+2,41+4,41+2,42+4,41+2,43+4,42+2,43+4,43+2,43+4,44+2,42+4);
ds_list_add(our_list,45+2,41+4,45+2,40+4,45+2,39+4,44+2,38+4,43+2,37+4,42+2,37+4);
ds_list_add(our_list,41+2,37+4,40+2,37+4);
//ds_list_add(our_list,
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 14: //"a"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,53,40,53,42,53,43,53,44,53,45,53,46);
ds_list_add(our_list,53,41,52,41,51,41,50,41,49,42);
ds_list_add(our_list,49,43,49,44,49,45,49,46,49,47);
ds_list_add(our_list,50,47,51,47,52,46,53,46);
//ds_list_add(our_list,
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 15: //"t"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,40+14,25+12,40+14,26+12,41+14,27+12,42+14,28+12);
ds_list_add(our_list,43+14,29+12,43+14,30+12,44+14,31+12,44+14,32+12);
ds_list_add(our_list,45+14,33+12,45+14,34+12,45+14,35+12);
/*ds_list_add(our_list,40,25,40,26,41,27,42,28);
ds_list_add(our_list,43,29,43,30,44,31,44,32,45,33,45,34,45,35);*/
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 16: //cross the "t"
if (list_prepped == 0)
{list_prepped = 1;

ds_list_add(our_list,39+14,29+12,40+14,29+12,41+14,29+12,42+14,28+12,43+14,28+12,44+14,28+12);
ds_list_add(our_list,45+14,27+12,46+14,27+12);

max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 17: //"t"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,40+21,25+14,40+21,26+14,41+21,27+14,42+21,28+14);
ds_list_add(our_list,43+21,29+14,43+21,30+14,44+21,31+14,44+21,32+14);
ds_list_add(our_list,45+21,33+14,45+21,34+14,45+21,35+14);
/*ds_list_add(our_list,40,25,40,26,41,27,42,28);
ds_list_add(our_list,43,29,43,30,44,31,44,32,45,33,45,34,45,35);*/
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 18: //cross the "t"
if (list_prepped == 0)
{list_prepped = 1;

ds_list_add(our_list,39+21,29+14,40+21,29+14,41+21,29+14,42+21,28+14,43+21,28+14,44+21,28+14);
ds_list_add(our_list,45+21,27+14,46+21,27+14);

max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 19: //"l"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,32+32, 3+27,33+32, 4+27,34+32, 6+27,35+32, 7+27,35+32, 8+27,36+32, 9+27,36+32,10+25);
ds_list_add(our_list,36+32,11+27,36+32,12+27,36+32,13+27,37+32,14+27,37+32,15+27,37+32,16+25);
ds_list_add(our_list,37+32,17+27,37+32,18+27,37+32,19+27,38+32,19+27,38+32,22+27,38+32,23+25);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 20: //"e"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,27+44,19+23,28+44,18+23,28+44,17+23,29+44,15+23,29+44,14+23,30+44,14+23,31+44,14+23);
ds_list_add(our_list,32+44,14+23,33+44,15+23,34+44,16+23,34+44,17+23,33+44,18+23,32+44,18+23);
ds_list_add(our_list,31+44,18+23,30+44,18+23,29+44,18+23,28+44,18+23,27+44,18+23,27+44,19+23);
ds_list_add(our_list,28+44,21+23,29+44,22+23,30+44,23+23,31+44,23+23,32+44,23+23,33+44,23+23);
ds_list_add(our_list,34+44,23+23,35+44,23+23,36+44,22+23,37+44,22+23);
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 21: //"d"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,53+34,40-2,53+34,42-2,53+34,43-2,53+34,44-2,53+34,45-2,53+34,46-2);
ds_list_add(our_list,53+34,41-2,52+34,41-2,51+34,41-2,50+34,41-2,49+34,42-2);
ds_list_add(our_list,49+34,43-2,49+34,44-2,49+34,45-2,49+34,46-2,49+34,47-2);
ds_list_add(our_list,50+34,47-2,51+34,47-2,52+34,46-2,87,44);
ds_list_add(our_list,87,39,87,38,86,37,86,36,86,35,85,34);
ds_list_add(our_list,85,33,85,32,85,31,84,30,84,29,83,28);
//ds_list_add(our_list,
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 22: //"!"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,83+5,28,84+5,29,84+5,30,85+5,31,85+5,32,85+5,33);
ds_list_add(our_list,85+5,34,86+5,35,86+5,36,86+5,37,87+5,38,87+5,39);
ds_list_add(our_list,87+5,40,87+5,41,87+5,42,87+5,43);

//ds_list_add(our_list,
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

case 23: //"!"
if (list_prepped == 0)
{list_prepped = 1;
ds_list_add(our_list,87+5,45,87+5,46,88+5,46,88+5,45);

//ds_list_add(our_list,
max_point = ds_list_size(our_list);
alarm[0] = point_speed;
}
break;

default:
break;
}
    
if (our_letter = total_letters) {ds_list_destroy(our_list);
alarm[0] = -1;
alarm[1] = 30;
}
}

/* */
/*  */
