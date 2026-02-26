//Movement 

xInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

yInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));


if(xInput != 0 || yInput != 0){
	
	len = point_distance(0, 0 ,xInput, yInput);
	xInput /= len;
	yInput /= len; 
}

x += xInput * moveSpeed; 
y += yInput * moveSpeed; 