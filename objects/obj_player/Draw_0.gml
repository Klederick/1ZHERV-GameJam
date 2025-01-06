/// @description Insert description here
// You can write your code in this editor
draw_self();

if(selected = 0 and menuSelected != -1){
	sprite = spr_cannon; var width = 0; var height = 0;
	switch(menuSelected){
		case 0: sprite = spr_cannon; width = 78; height = 60;  break;
		case 1: sprite = spr_BombWall; width = 46; height = 96;   break;
		case 2: sprite = spr_TeslaCoil; width = 22; height = 41;   break;
	}
	if(!collision_rectangle(x-width/2, y-height*8, x+width/2, y+height*8, obj_cannon, true, true) and
		!collision_rectangle(x-width/2, y-height*8, x+width/2, y+height*8, obj_teslaCoil, true, true) and
		 !collision_rectangle(x-width/2, y-height*8, x+width/2, y+height*8, obj_bombWall, true, true)){
			 	if(x-width/2 < 930){
					draw_sprite_ext(sprite, 0, x, 524-height/2+48, -1, 1, 0, c_lime, 0.5);
				}else{
					draw_sprite_ext(sprite, 0, x, 524-height/2+48, 1, 1, 0, c_lime, 0.5);
				}
	}else{
				if(x-width/2 < 930){
					draw_sprite_ext(sprite, 0, x, 524-height/2+48, -1, 1, 0, c_red, 0.5);
				}else{
					draw_sprite_ext(sprite, 0, x, 524-height/2+48, 1, 1, 0, c_red, 0.5);
				}
	}
}else if(selected = 1 and menuSelected != -1){
	sprite = spr_splitter; var width = 0; var height = 0;
	switch(menuSelected){
		case 0: sprite = spr_splitter; width = 32; height = 32;  break;
		case 1: sprite = spr_combiner; width = 32; height = 32;   break;
	}
	if(!collision_rectangle(mouse_x-width/2, mouse_y-height/2, mouse_x+width/2, mouse_y+height/2, obj_splitter, true, true) and
		 !collision_rectangle(mouse_x-width/2, mouse_y-height/2, mouse_x+width/2, mouse_y+height/2, obj_combiner, true, true)){
				draw_sprite_ext(sprite, 0, mouse_x, mouse_y, 1, 1, 0, c_lime, 0.5);
	}else{
				draw_sprite_ext(sprite, 0, mouse_x, mouse_y, 1, 1, 0, c_red, 0.5);
	}
}