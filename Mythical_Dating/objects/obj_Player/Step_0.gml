//Movement Inputs 

xInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));


//makes diagnal movement a normal speed NOT FASTER 
if(xInput != 0 || yInput != 0)
{	
	len = point_distance(0, 0 ,xInput, yInput);
	xInput /= len;
	yInput /= len; 
}

// Movement speeds
var hsp = xInput * moveSpeed;
var vsp = yInput * moveSpeed;

//horizontal movemnt -- checks it it hits a wall too 
if (!place_meeting(x + hsp, y, obj_wall_collision)) {
    x += hsp;
} else {
    var step = sign(hsp);
    while (!place_meeting(x + step, y, obj_wall_collision)) {
        x += step;   // scoot to wall
    }
}

//vertical movemnt -- checks it it hits a wall too 
if (!place_meeting(x, y + vsp, obj_wall_collision)) {
    y += vsp;
} else {
    var step = sign(vsp);
    while (!place_meeting(x, y + step, obj_wall_collision)) {
        y += step;   // scoot to wall
    }
}
