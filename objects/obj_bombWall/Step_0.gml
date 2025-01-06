/// @description Insert description here
// You can write your code in this editor
input = outlet.input;

if(input >= required){
	activated = true;	
}else{
	activated = false;	
}

if(activated = true){
	status.visible = true;
	if(timer < cooldown){
		timer++;
	}
}else{
	status.visible = false;
	timer = 0;
	image_blend = c_white	
}