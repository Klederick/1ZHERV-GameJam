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
	if(timer = cooldown){
		//attack
		instance_create_layer(x,y,"Machines", obj_teslaWave);
		timer = 0;
	}
}else{
	status.visible = false;
	timer = 0;
	image_blend = c_white	
}