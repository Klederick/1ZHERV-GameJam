/// @description Insert description here
// You can write your code in this editor
if(cooldown > 0){
	cooldown--;
	if(image_alpha < 0.25){
		image_alpha += 0.025	
	}
	if(cooldown = 0){
		image_alpha = 0	
	}
}else{
	if(image_alpha < 0){
		image_alpha -= 0.025;	
	}
	if(image_alpha <= 0){
		image_alpha = 0;	
	}
}