///display_dialogue_casual_script(text[],chara_sequence[])

if(!instance_exists(dialogue_box_casual_obj))
	current_box = instance_create_layer(x,y,"Instances",dialogue_box_casual_obj);
	
current_box.text = argument0;
current_box.chara_sequence = argument1;