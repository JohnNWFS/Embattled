/// @description scr_draw_pos_neg(value,other object, type [score...hp...armor])
/// @param value
/// @param other object
/// @param  type [score...hp...armor]
function scr_draw_pos_neg() {
	//type = "score", "hp"  (for enemies), "armor" (for player)

	var value = argument[0];
	var other_object = argument[1];
	var change_type = argument[2];
	var change_index = 0;
	if (change_type == "hp") {change_index = 1;}
	if (change_type == "armor") {change_index = 2;}

	var myx = x;
	var myy = y;
	if (other_object > 0)
	{
	myx = other_object.x;
	myy = other_object.y;
	}

	var obj_to_use = 0;
	if (value > 0) {obj_to_use = obj_positives;}
	else
	{obj_to_use = obj_negatives;}
	value = abs(value);
	if (value > 5)
	{
	if (value == 10) {value = 6;}
	if (value == 15) {value = 7;}
	if (value == 20) {value = 8;}
	if (value == 25) {value = 9;}
	if (value == 50) {value = 10;}
 
	}
	var num_instance = instance_create(myx,myy,obj_to_use);
	if (obj_to_use == obj_negatives) {//use red if a negative
	change_index += 9;
	}
	obj_to_use.change_index = change_index;

	num_instance.image_index = value -1; //adjust to accomodate 0 value




}
