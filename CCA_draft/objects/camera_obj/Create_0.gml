/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C912213
/// @DnDArgument : "code" "if(instance_exists(perso_obj))$(13_10){$(13_10)	camera = camera_create();$(13_10)$(13_10)	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);$(13_10)	var pm = matrix_build_projection_ortho(display_get_width()*0.9,display_get_height()*0.9,1,10000);$(13_10)$(13_10)$(13_10)	camera_set_view_mat(camera,vm);$(13_10)	camera_set_proj_mat(camera,pm);$(13_10)$(13_10)	view_camera[0] = camera;$(13_10)	follow = nate_obj;$(13_10)$(13_10)	xTo = x;$(13_10)	yTo = y;$(13_10)}$(13_10)"
if(instance_exists(perso_obj))
{
	camera = camera_create();

	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	var pm = matrix_build_projection_ortho(display_get_width()*0.9,display_get_height()*0.9,1,10000);


	camera_set_view_mat(camera,vm);
	camera_set_proj_mat(camera,pm);

	view_camera[0] = camera;
	follow = nate_obj;

	xTo = x;
	yTo = y;
}