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
		//find target
		if(instance_exists(obj_enemy)){
			inst = instance_nearest(x,y,obj_enemy);
			//rotate accordingly
			if(inst.x > x){
				image_xscale = 1;	
			}else{
				image_xscale = -1
			}
			boom = instance_create_layer(x+sprite_width/2 - 4, y - sprite_height/2 - 2, "Instances", obj_cannonBoom);
			boom.caller = self;
			bullet = instance_create_layer(x+sprite_width/2 - 4, y - sprite_height/2 - 2, "Instances", obj_bullet);
			bullet.target = inst;
			timer = 0;
		}
		
	}
}else{
	status.visible = false;
	timer = 0;
	image_blend = c_white	
}