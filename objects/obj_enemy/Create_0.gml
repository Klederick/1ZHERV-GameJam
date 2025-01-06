/// @description Insert description here
// You can write your code in this editor
spd = 1;
move_towards_point(obj_player.x,y,spd);
image_speed = 0.15;
damage = 0.5;
collide = false;
status = instance_create_layer(x,y,"Instances", obj_enemyStatusBar);
status.source = self;
hp = 100; maxhp = 100;

attacking = noone;