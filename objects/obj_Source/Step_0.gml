/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(obj_player.selected = 1){
		if(image_alpha < 1){ image_alpha += 0.1 }
		
	}else{
		if(image_alpha > 0){ image_alpha -= 0.2 }	
		obj_player.connecting = false
	}
}
if(connection != noone){
	connection.input = output;	
}
//can be clicked on and connected
if(mouse_x >= x - 2 and mouse_x <= x + sprite_width + 2 and mouse_y >= y - 2 and mouse_y <= y + sprite_height + 2){
	if(obj_player.connecting = true or connection != noone){
		image_blend = c_red
		if(connection != noone){
			if(mouse_check_button_pressed(mb_right)){
				connection.input = 0;
				connection = noone;
			}
		}
	}else{
		image_blend = c_lime
		if(mouse_check_button_pressed(mb_left)){
			obj_player.connecting = true;
			obj_player.connectingObject = self;
			obj_player.menuSelected = -1;
		}
	}
}else{
	image_blend = c_white	
}