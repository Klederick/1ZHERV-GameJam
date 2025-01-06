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