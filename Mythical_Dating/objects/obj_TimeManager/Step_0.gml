//wrap time around if after midnight 
if(global.game_minutes >= midnight)
{
	global.game_minutes -= midnight; 
}

//if 2:00 am or later go home 
if(global.game_minutes >= endGame_minutes)
{
	go_home = true;
	//go to day two --->  room_goto(Bar2);
}