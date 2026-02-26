if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
	createTextBox(textID);
	//add to game minutes since dialogue pressed 

}

switch(characterName)
{
	case "Slender":
		sprite_index = spr_Slender;
		break;
	case "Tooth Fairy":
		sprite_index = spr_Toothy;
		break;
	case "Gnomes":
		sprite_index = spr_hiddenGnonmes;
		break;
	case "Yeti":
		sprite_index = spr_Yeti;
		break;
	case "Santa":
		sprite_index = spr_Santa;
		break;
	case "Kraken":
		sprite_index = spr_Kraken;
		break;
	case "Hatman":
		sprite_index = spr_Hatman;
		break;
	case "Phone":
		sprite_index = spr_Phone;
		break;
	default:
		show_debug_message("No sprite");
		break;
}
