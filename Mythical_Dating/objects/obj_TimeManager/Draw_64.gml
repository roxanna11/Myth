
//set minute and hour values 

var hours = global.game_minutes div 60;
var minutes = global.game_minutes mod 60;  


//convert into clock 
var display_hour = hours; 
var suffix = "PM"; 

/////SET PM OR AM VALUE 
//if in pm time 
if(hours >= 12){
	suffix = "PM"; 
} //if in am time 
if(hours < 12){
	suffix = "AM"; 
} 



//ex - if hour 13(aka 1) 13 -12 = 1 
if(hours > 12){
	display_hour -= 12; 
}
//if it is midnight/12 -- 12 -12 = 0 so ==12 
if(display_hour == 0){
	display_hour = 12; 
}



var minute_text;
//adds the extra 0 for single minutes-- only 0 in this case 
if (minutes < 10)
{
    minute_text = "0" + string(minutes);
}
else
{
    minute_text = string(minutes);
}

//draw the clock 
draw_set_font(TimerFont); 
draw_text(xOffSet, yOffSet, string(display_hour) + ":" + minute_text + " " + suffix);
draw_set_font(DialogueFont); 