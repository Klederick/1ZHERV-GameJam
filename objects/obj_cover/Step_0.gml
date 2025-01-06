/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	x = obj_player.x - 1280;
	y = obj_player.y - 720;
	if(obj_player.selected = 1){
		if(image_alpha < 0.5){
			image_alpha += 0.05;
		}else{
			image_alpha = 0.5;	
		}
	}else{
		if(image_alpha > 0){
			image_alpha -= 0.025;
		}else{
			image_alpha = 0;
		}
	}
}