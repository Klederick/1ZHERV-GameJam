/// @description Insert description here
// You can write your code in this editor
if(spawned){
//###Behavioral
if(wave = true){
	wavetimer++;
	if(wavetimer >= waveCooldown){
		wave = false;
		instance_create_layer(0, 530, "Instances", obj_enemySpawner);
		instance_create_layer(1920, 530, "Instances", obj_enemySpawner);
	}
}
//###Controls
left = keyboard_check(vk_left) or keyboard_check(ord("A"))
right = keyboard_check(vk_right) or keyboard_check(ord("D"));

if(keyboard_check_pressed(49)){
	selected = 0;	
	menuLen = 3;
}
if(keyboard_check_pressed(50)){
	selected = 1;	
	menuLen = 2;
}
if(selected != -1){
	if(keyboard_check_pressed(ord("Q"))){
		//shuffle building/electricity components
		if(menuSelected <= 0){
			menuSelected = menuLen-1;	
		}else{
			menuSelected--;	
		}
	}
	if(keyboard_check_pressed(ord("E"))){
		//shuffle building/electricity components
		if(menuSelected >= menuLen-1){
			menuSelected = 0;	
		}else{
			menuSelected++;	
		}
	}
}
if(keyboard_check_pressed(ord("X"))){
	if(menuSelected != -1){
		menuSelected = -1	
	}else{
		selected = -1
	}
}
if(keyboard_check(vk_space) or keyboard_check(ord("W"))){
	if(!jump){ jump = true; falling = false; fallspeed = 10;
		sprite_index = spr_playerJump;
		image_index = 0;
		image_speed = 0; }	
}

//###Movement and jump mechanics
if(jump = true){
	//jump condition
	if(left){
		x -= spd; image_xscale = -1;	
	}else if(right){
		x += spd; image_xscale = 1;		
	}
	
	if(!falling){
		if(image_index != 3){
			image_speed = action_speed	
		}else{
			image_speed = 0; image_index = 3;	
		}
		y -= fallspeed;
		fallspeed = fallspeed * 0.95;
		if(fallspeed < 2){
			falling = true;	
		}
	}else{
		image_speed = 0.3
		y += fallspeed;
		fallspeed = fallspeed * 1.05;
		if(y >= 524){
			y = 524; jump = false;	
		}
	}
}else{
	y = 524;
	//normal movement
if(left){
		idle = 0;
		x -= spd;
		image_speed = action_speed; image_xscale = -1;
		if(!jump){ sprite_index = spr_playerRun; }
}else if(right){
		idle = 0;
		x += spd;
		image_speed = action_speed;  image_xscale = 1;
		if(!jump){ sprite_index = spr_playerRun; }
}else{
		if(!jump){
		idle++;
		sprite_index = spr_playerIdle;
		if(idle >= 60){
			image_speed = idle_speed;	
		}else{
			image_speed = 0;	
		}
		}else{ idle = 0; }
	
}	
}
	
	
	
	
//spawning animation
}else{
	sprite_index = spr_playerSpawn;
	image_speed = 0;
	if(y < 524){
		y += fallspeed
		fallspeed = fallspeed * 1.01;
	}else{
		y = 524
		image_speed = action_speed;
		if(image_index = image_number-1){
			spawned = true;
		}
	}
}
//


