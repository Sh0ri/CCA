<<<<<<< HEAD
/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 58E39ADC
/// @DnDArgument : "script" "interact_script"
/// @DnDArgument : "arg" ""Inspect","Watch","Pee on","Destroy""
/// @DnDSaveInfo : "script" "6c330a74-5f7f-4c64-b481-054b068b4cb3"
script_execute(interact_script, "Inspect","Watch","Pee on","Destroy");
=======
/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 650B6FDB
/// @DnDArgument : "expr" "must_show_action == false"
if(must_show_action == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03BCEDD0
	/// @DnDParent : 650B6FDB
	/// @DnDArgument : "expr" "interact_script("Inspect","Watch","Pee on","Destroy")"
	/// @DnDArgument : "var" "compteur_actions"
	compteur_actions = interact_script("Inspect","Watch","Pee on","Destroy");

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2330B10B
	/// @DnDParent : 650B6FDB
	/// @DnDArgument : "code" "if(compteur_actions != 0)$(13_10){$(13_10)	action_script(lampe_obj,compteur_actions,current_action);$(13_10)}$(13_10)$(13_10)"
	if(compteur_actions != 0)
	{
		action_script(lampe_obj,compteur_actions,current_action);
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4200BAA3
/// @DnDArgument : "code" "if(must_show_action == true && current_action != "")$(13_10){$(13_10)	action_script(lampe_obj,compteur_actions,current_action);$(13_10)}$(13_10)"
if(must_show_action == true && current_action != "")
{
	action_script(lampe_obj,compteur_actions,current_action);
}
>>>>>>> Shori
