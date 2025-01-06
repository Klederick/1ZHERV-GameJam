/// @description Insert description here
// You can write your code in this editor
output.output = inputa.input + inputb.input;

if(obj_player.selected != 1){
	if(image_alpha > 0.25){
		image_alpha -= 0.05;	
	}
}else{
	if(image_alpha < 1){
		image_alpha += 0.05;	
	}
}