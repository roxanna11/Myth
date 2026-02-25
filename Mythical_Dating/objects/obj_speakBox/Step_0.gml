if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
	createTextBox(textID);
}

switch(textID)
{
	case "Slender":
		
		break;
	case "Tooth Fairy":
	
		break;
	case "Gnomes":
	
		break;
	case "Yeti":
		
		break;
	case "Santa":
		sprite_index = spr_Santa;
		break;
	default:
		show_debug_message("No sprite");
		break;
}