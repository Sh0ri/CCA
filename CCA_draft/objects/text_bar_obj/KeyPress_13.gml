/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1893D969
/// @DnDArgument : "var" "allow_phase"
/// @DnDArgument : "value" "false"
if(nate_obj.phase_activated == true)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 446C499C
	/// @DnDApplyTo : 71bc77b5-b075-44d1-a649-a7b1445b7e96
	/// @DnDParent : 1893D969
	
	nate_obj.phase_activated = false;
	nate_obj.phase_item_name = text;
	
	with(text_bar_obj)
	 instance_destroy();
	 
}
