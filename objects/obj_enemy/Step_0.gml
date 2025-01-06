/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(attacking)){
	spd = 1;
	image_speed = 0.15;	
}
move_towards_point(obj_player.x,y,spd);
if(x >= obj_player.x){
	image_xscale = -1;	
}else{
	image_xscale = 1;	
}
if(hp < 0){
	instance_destroy();	
}