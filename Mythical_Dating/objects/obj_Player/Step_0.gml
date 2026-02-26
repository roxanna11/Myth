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



//SHOOTING MACANICS 

if(global.shootActive == true){
	sprite_index = spr_PlayerShoot; 
}

//if shoot active + shoot button
if(mouse_check_button_pressed(mb_left) && global.shootActive && cooldown >=10 ){
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var arrow = instance_create_layer(x, y, "player", obj_ArrowProjectile);
	arrow.direction = dir;
    arrow.speed = 12;
	// apply same offset here (match your sprite)
	arrow.image_angle = dir - 90;
	cooldown = 0; 
}

if(cooldown <= 10){
	cooldown += 1; 
}