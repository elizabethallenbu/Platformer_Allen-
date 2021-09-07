key_left = keyboard_check(vk_left) || keyboard_check ( ord("A")) ; 
key_right = keyboard_check(vk_right) || keyboard_check ( ord("D")) ;
key_jump = keyboard_check_pressed(vk_space); 


// Calculate movements 
var move = key_right - key_left;


hsp = move * walksp; 

vsp = vsp + grv; 

if(!place_meeting(x,y+1, oWall)) && (key_jump) 
{ 
	
	vsp = -7; 
} 


//Horizontal  Collision
if (place_meeting(x+hsp, y , oWall)) 
{ 
	while (!place_meeting(x+sign(hsp), y , oWall)) 
{ 
	x = x + hsp; 
} 
	hsp = -hsp ; 
}



//Vertical  Collision
if (place_meeting(x, y+vsp , oWall)) 
{ 
	while (!place_meeting(x, y+sign(vsp) , oWall)) 
{ 
	y = y + vsp; 
} 
	vsp = 0; 
}


//Animation 
if (!place_meeting (x, y+1, oWall)) 
{ 
	sprite_index = sEnemyA; 
	image_speed = 0; 
	if (sign(vsp) > 0) image_index = 1; else image_index = 0; 
} 
else 
{ 
	image_speed = 1; 
	if(hsp ==0)
	{ 
		sprite_index = sEnemyA;  
	} 
	
	else 
	
	{
		
		sprite_index = sEnemyR; 
		
	} 
} 

if (hsp !=0) image_xscale = sign(hsp); 


