/// @description Insert description here
// You can write your code in this editor
attacking = other;
spd = 0;
if(other.activated){
image_speed = 0;
other.hp -= damage;
if(other.hp = 0){
	with other instance_destroy();
	spd = 1;
	image_speed = 0.15;
}
}
show_debug_message("Colliding with wall " + string(other.timer) + " / " + string(other.cooldown));
if(other.timer >= other.cooldown-1){
	hp -= 40;	
	other.timer = 0;
if(other.image_xscale = 1){
	instance_create_layer(other.x + other.sprite_width/2 - 4, other.y, "Machines", obj_WallBoom);
}else{
	instance_create_layer(other.x + other.sprite_width - 32, other.y - 8, "Machines", obj_WallBoom);
}}