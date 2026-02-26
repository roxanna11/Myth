
//check if hit santa
if(place_meeting(x, y, obj_Santa)){
	santaHit = true; 
}

//check if hit yette
if(place_meeting(x, y, obj_Yette)){
	yetteHit = true; 
}

//if both yette and santa were hit 
if(yetteHit && santaHit){
	room_goto(HappyEnd);
}