/// @description Insert description here
// You can write your code in this editor
if(selected = 1){
	if(shaderIndex > 128){
		shaderIndex -= 16;	
	}
	shaderColor = make_color_hsv(0,0,shaderIndex)	
}else{
	if(shaderIndex != 256){
		shaderIndex += 8;
	}
	shaderColor = make_color_hsv(0,0,shaderIndex)
}