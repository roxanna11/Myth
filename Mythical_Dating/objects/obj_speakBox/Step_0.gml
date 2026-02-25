if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
	createTextBox(textID);
	//add to game minutes since dialogue pressed 
	global.game_minutes += 30;

}



