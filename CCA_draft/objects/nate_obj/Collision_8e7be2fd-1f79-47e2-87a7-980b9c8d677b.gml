/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3933B75E
/// @DnDArgument : "code" "if(!talking)$(13_10){$(13_10)	if(keyboard_check_pressed(vk_space) )$(13_10)	{$(13_10)		text[0] = "Could you please, just for once, respect my personal space ?"$(13_10)		text[1] = "I don't believe in that concept.";$(13_10)		text[2] = "Guess it's too late for you to find a friend who respects you.";$(13_10)$(13_10)		chara_sequence[0] = "Oren";$(13_10)		chara_sequence[1] = "Nate";$(13_10)		chara_sequence[2] = "Mia";$(13_10)$(13_10)		//display_dialogue_script(text,chara_sequence);$(13_10)		display_dialogue_casual_script(text, chara_sequence);$(13_10)		//talking = true;$(13_10)	}$(13_10)}$(13_10)"
if(!talking)
{
	if(keyboard_check_pressed(vk_space) )
	{
		text[0] = "Could you please, just for once, respect my personal space ?"
		text[1] = "I don't believe in that concept.";
		text[2] = "Guess it's too late for you to find a friend who respects you.";

		chara_sequence[0] = "Oren";
		chara_sequence[1] = "Nate";
		chara_sequence[2] = "Mia";

		//display_dialogue_script(text,chara_sequence);
		display_dialogue_casual_script(text, chara_sequence);
		//talking = true;
	}
}