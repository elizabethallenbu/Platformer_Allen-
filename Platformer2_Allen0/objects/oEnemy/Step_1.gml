if (hp <= 0 ) 

	with (instance_create_layer (x, y ,layer , oDead)) 
	{ 

	
	direction = other.hitfrom; 
	hsp = lengthdir_x(3, direction ) ; 
	vsp  = lengthdir_x(3, direction)-2; 
	} 
	
 instance_destroy () ; 

