//arg0 = object
//arg1 = action_number
draw_set_color(c_white);

draw_set_font(-1);
// Reset text alignment just in case
draw_set_valign(fa_top);
draw_set_halign(fa_left);
	
draw_text_transformed(get_current_perso_script().x + 50, get_current_perso_script().y -15 + 20, argument0.inspect_text,1,1,image_angle);

if(keyboard_check(vk_enter))
{
	argument0.must_show_action = false;
	argument0.current_action = "";	
}