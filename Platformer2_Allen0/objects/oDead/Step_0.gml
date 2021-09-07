if (done == 1) 
 {
	vsp = vsp + grv; 



	//Horizontal  Collision
	if (place_meeting(x+hsp, y , oWall)) 
	{ 
		while (!place_meeting(x+sign(hsp), y , oWall)) 
	{ 
		x = x + hsp; 
	} 
		hsp = 0; 
	}



	//Vertical  Collision
	if (place_meeting(x, y+vsp , oWall)) 
	{ 
		if (vsp > 0 ) 
		{		
			done = 1; 
			image_index = 1; 
		} 
		
		
		while (!place_meeting(x, y+sign(vsp) , oWall)) 
	{ 
		y = y + vsp; 
	} 
	
	}
 } 