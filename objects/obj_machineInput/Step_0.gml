/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(obj_player.selected = 1){
		if(image_alpha < 1){ image_alpha += 0.1 }
		
	}else{
		if(image_alpha > 0){ image_alpha -= 0.2 }	
	}
}
if(mouse_x >= x - 2 and mouse_x <= x + sprite_width + 2 and mouse_y >= y - 2 and mouse_y <= y + sprite_height + 2){
	if(obj_player.connecting){
		image_blend = c_lime;
		if(mouse_check_button_pressed(mb_left)){
			obj_player.connectingObject.connection = self;
			input = obj_player.connectingObject.output;
			obj_player.connecting = false; obj_player.connectingObject = noone;
		}
	}else{
		image_blend = c_red;	
		if(mouse_check_button_pressed(mb_right)){
			//find source
			for(i = 0; i < instance_number(obj_Source); i++){
				inst = instance_find(obj_Source, i);
				if(inst.connection = self){
					inst.connection = noone;
					input = 0;
				}
			}
			for(i = 0; i < instance_number(obj_wallSource); i++){
				inst = instance_find(obj_wallSource, i);
				if(inst.connection = self){
					inst.connection = noone;
					input = 0;
				}
			}
			
		}
	}
}else{
	image_blend = c_white	
}