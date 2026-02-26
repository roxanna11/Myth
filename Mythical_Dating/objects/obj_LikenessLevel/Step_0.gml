if (keyboard_check_pressed(vk_up))   global.likeoMeter = min(100, global.likeoMeter + 25);
if (keyboard_check_pressed(vk_down)) global.likeoMeter = max(0,   global.likeoMeter - 25);


//if likeometer is full aka maxed out  activate shooting capablities 
if(global.likeoMeter >= 100){
	
	global.shootActive = true; 
}


