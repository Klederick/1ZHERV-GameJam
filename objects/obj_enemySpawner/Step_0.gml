/// @description Insert description here
// You can write your code in this editor
timer++;
if(timer >= cooldown){
	instance_create_layer(x,y,"Instances",obj_enemy)	
	timer = 0;
	cooldown = cooldown * 0.95
}