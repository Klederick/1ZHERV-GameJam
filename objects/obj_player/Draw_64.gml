/// @description Insert description here
// You can write your code in this editor



if(selected = 0) { draw_sprite(spr_inventoryBox, 1, 0, 0) }else{ draw_sprite(spr_inventoryBox, 0, 0, 0) }
if(selected = 1) { draw_sprite(spr_inventoryBox, 1, 64, 0) }else{  draw_sprite(spr_inventoryBox, 0, 64, 0) }
draw_sprite(spr_hammer, 0, 0, 0);
draw_sprite(spr_wireTool, 0, 64, 0);

if(wave = true){
	draw_rectangle(192, 8, surface_get_width(application_surface)-64 ,40, true);
	draw_set_alpha(0.5);
	draw_rectangle(193, 9, surface_get_width(application_surface)-65 ,39, false);
	draw_set_alpha(1);
	draw_sprite(spr_enemyWaveIcon, 0, surface_get_width(application_surface)-96 - (wavetimer/waveCooldown)*(surface_get_width(application_surface)-280), 8)
}

if(selected = 0){
	draw_sprite_ext(spr_cannonIcon, 0, 8, surface_get_height(application_surface)-600, 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_bombWallIcon, 0, 8,  surface_get_height(application_surface)-472, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_teslaIcon, 0, 8, surface_get_height(application_surface)-344, 2, 2, 0, c_white, 1);
	if(menuSelected = 0){
		draw_sprite_ext(spr_inventoryBox, 1, 8, surface_get_height(application_surface)-600, 2, 2, 0, c_white, 1);
	}else{		
		draw_sprite_ext(spr_inventoryBox, 0, 8, surface_get_height(application_surface)-600, 2, 2, 0, c_white, 1);
	}
	if(menuSelected = 1){
		draw_sprite_ext(spr_inventoryBox, 1, 8,  surface_get_height(application_surface)-472, 2, 2, 0, c_white, 1);		
	}else{
		draw_sprite_ext(spr_inventoryBox, 0, 8,  surface_get_height(application_surface)-472, 2, 2, 0, c_white, 1);
	}
	if(menuSelected = 2){	
		draw_sprite_ext(spr_inventoryBox, 1, 8,  surface_get_height(application_surface)-344, 2, 2, 0, c_white, 1);
	}else{
		draw_sprite_ext(spr_inventoryBox, 0, 8, surface_get_height(application_surface)-344, 2, 2, 0, c_white, 1);
	}
}else if(selected = 1){
	draw_sprite_ext(spr_splitterIcon, 0, 8, surface_get_height(application_surface)-600, 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_combinerIcon, 0, 8,  surface_get_height(application_surface)-472, 2, 2, 0, c_white, 1);	
	if(menuSelected = 0){
		draw_sprite_ext(spr_inventoryBox, 1, 8, surface_get_height(application_surface)-600, 2, 2, 0, c_white, 1);
	}else{		
		draw_sprite_ext(spr_inventoryBox, 0, 8, surface_get_height(application_surface)-600, 2, 2, 0, c_white, 1);
	}
	if(menuSelected = 1){
		draw_sprite_ext(spr_inventoryBox, 1, 8,surface_get_height(application_surface)-472, 2, 2, 0, c_white, 1);		
	}else{
		draw_sprite_ext(spr_inventoryBox, 0, 8, surface_get_height(application_surface)-472, 2, 2, 0, c_white, 1);
	}
}