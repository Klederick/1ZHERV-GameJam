/// @description Insert description here
// You can write your code in this editor
outputa.output = input.input/3
outputb.output = input.input/3
outputc.output = input.input/3

if(obj_player.selected != 1){
	if(image_alpha > 0.25){
		image_alpha -= 0.05;	
	}
}else{
	if(image_alpha < 1){
		image_alpha += 0.05;	
	}
}