/// @description Insert description here
// You can write your code in this editor
if(selected = 0 and menuSelected != -1){
	object = obj_cannon; var width = 0; var height = 0;
	switch(menuSelected){
		case 0: object = obj_cannon; width = 78; height = 60;  break;
		case 1: object = obj_bombWall; width = 46; height = 96;   break;
		case 2: object = obj_teslaCoil; width = 22; height = 41;   break;
	}
	if(!collision_rectangle(x-width/2, y-height*8, x+width/2, y+height*8, obj_cannon, true, true) and
		!collision_rectangle(x-width/2, y-height*8, x+width/2, y+height*8, obj_teslaCoil, true, true) and
		 !collision_rectangle(x-width/2, y-height*8, x+width/2, y+height*8, obj_bombWall, true, true)){
				new_inst = instance_create_layer(x, 524-height/2+48, "Machines", object);
				if(x-width/2 < 930){
					new_inst.image_xscale = -1
				}
				if(wave = false and !instance_exists(obj_enemySpawner)){
					wave = true;	
				}
	}
}else if(selected = 1 and menuSelected != -1){
	object = obj_splitter; var width = 0; var height = 0;
	switch(menuSelected){
		case 0: object = obj_splitter; width = 32; height = 32;  break;
		case 1: object = obj_combiner; width = 32; height = 32;   break;
	}
	if(!collision_rectangle(mouse_x-width/2, mouse_y-height/2, mouse_x+width/2, mouse_y+height/2, obj_splitter, true, true) and
		 !collision_rectangle(mouse_x-width/2, mouse_y-height/2, mouse_x+width/2, mouse_y+height/2, obj_combiner, true, true)){
				new_inst = instance_create_layer(mouse_x, mouse_y, "Electricity", object);
	}
}