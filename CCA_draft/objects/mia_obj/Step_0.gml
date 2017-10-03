/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 222FA9E9
/// @DnDArgument : "code" "// React$(13_10)$(13_10)// Mouvement Mia$(13_10)if( global.id_perso == 3)$(13_10){$(13_10)		move_h = key_left + key_right;$(13_10)		move_v = key_up + key_down;$(13_10)$(13_10)$(13_10)		hsp = move_h * movespeed;$(13_10)		vsp = move_v * movespeed;$(13_10)		$(13_10)		// Horizontal Collision$(13_10)		if(place_meeting(x+hsp,y,wall_obj))$(13_10)		{$(13_10)		    while(!place_meeting(x+sign(hsp),y,wall_obj))$(13_10)		    {$(13_10)		        x += sign(hsp);$(13_10)		    }	$(13_10)		    hsp = 0;$(13_10)		}$(13_10)		if(place_meeting(x+hsp,y,item_interact_obj))$(13_10)		{$(13_10)			while(!place_meeting(x+sign(hsp),y,item_interact_obj))$(13_10)			    {$(13_10)			        x += sign(hsp);$(13_10)			    }$(13_10)			hsp = 0;$(13_10)		}	$(13_10)	$(13_10)		x += hsp;$(13_10)$(13_10)		// Vertical Collision$(13_10)		if(place_meeting(x,y + vsp,wall_obj))$(13_10)		{$(13_10)		    while(!place_meeting(x,y + sign(vsp),wall_obj))$(13_10)		    {$(13_10)		        y += sign(vsp);$(13_10)		    }$(13_10)$(13_10)		    vsp = 0;$(13_10)		}$(13_10)		if(place_meeting(x,y + vsp,item_interact_obj))$(13_10)		{$(13_10)			while(!place_meeting(x,y + sign(vsp),item_interact_obj))$(13_10)		    {$(13_10)		        y += sign(vsp);$(13_10)		    }$(13_10)		    vsp = 0;$(13_10)		}$(13_10)$(13_10)		y += vsp;$(13_10)$(13_10)}$(13_10)$(13_10)else{$(13_10)	//Follow Players$(13_10)	if(global.id_perso==1){var perso = nate_obj;}$(13_10)	else{var perso = oren_obj;}$(13_10)	ds_queue_enqueue(move_queue, perso.x-30);$(13_10)	ds_queue_enqueue(move_queue, perso.y+130);$(13_10)	LAG_STEPS = 20;$(13_10)	if (ds_queue_size(move_queue) > LAG_STEPS*2) {$(13_10)		x=ds_queue_dequeue(move_queue);$(13_10)		y=ds_queue_dequeue(move_queue);		$(13_10)	}$(13_10)}"
// React

// Mouvement Mia
if( global.id_perso == 3)
{
		move_h = key_left + key_right;
		move_v = key_up + key_down;


		hsp = move_h * movespeed;
		vsp = move_v * movespeed;
		
		// Horizontal Collision
		if(place_meeting(x+hsp,y,wall_obj))
		{
		    while(!place_meeting(x+sign(hsp),y,wall_obj))
		    {
		        x += sign(hsp);
		    }	
		    hsp = 0;
		}
		if(place_meeting(x+hsp,y,item_interact_obj))
		{
			while(!place_meeting(x+sign(hsp),y,item_interact_obj))
			    {
			        x += sign(hsp);
			    }
			hsp = 0;
		}	
	
		x += hsp;

		// Vertical Collision
		if(place_meeting(x,y + vsp,wall_obj))
		{
		    while(!place_meeting(x,y + sign(vsp),wall_obj))
		    {
		        y += sign(vsp);
		    }

		    vsp = 0;
		}
		if(place_meeting(x,y + vsp,item_interact_obj))
		{
			while(!place_meeting(x,y + sign(vsp),item_interact_obj))
		    {
		        y += sign(vsp);
		    }
		    vsp = 0;
		}

		y += vsp;

}

else{
	//Follow Players
	if(global.id_perso==1){var perso = nate_obj;}
	else{var perso = oren_obj;}
	ds_queue_enqueue(move_queue, perso.x-30);
	ds_queue_enqueue(move_queue, perso.y+130);
	LAG_STEPS = 20;
	if (ds_queue_size(move_queue) > LAG_STEPS*2) {
		x=ds_queue_dequeue(move_queue);
		y=ds_queue_dequeue(move_queue);		
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6489FFFB
/// @DnDArgument : "code" "// Check Input$(13_10)key_right = keyboard_check(ord("D"));$(13_10)key_left = -keyboard_check(ord("Q"));$(13_10)key_up = -keyboard_check(ord("Z"));$(13_10)key_down = keyboard_check(ord("S"));$(13_10)$(13_10)if(keyboard_check(ord("Z")))$(13_10)    dir = 0;$(13_10)$(13_10)if(keyboard_check(ord("D")))$(13_10)    dir = 1;$(13_10)$(13_10)if(keyboard_check(ord("S")))$(13_10)    dir = 2;$(13_10)$(13_10)if(keyboard_check(ord("Q")))$(13_10)    dir = 3;$(13_10)$(13_10)"
// Check Input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("Q"));
key_up = -keyboard_check(ord("Z"));
key_down = keyboard_check(ord("S"));

if(keyboard_check(ord("Z")))
    dir = 0;

if(keyboard_check(ord("D")))
    dir = 1;

if(keyboard_check(ord("S")))
    dir = 2;

if(keyboard_check(ord("Q")))
    dir = 3;