/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"Instances", obj_mainCamera)
instance_create_layer(x-720, y-360, "Instances", obj_cover);

image_speed = 0;

idle = 0;

jump = false; falling = false;
left = false;
right = false;
spawned = false;
connecting = false; connectingObject = noone;

spd = 4; action_speed = 0.5; idle_speed = 0.15

fallspeed = 8;

selected = -1; menuSelected = -1; menuLen = 0;

shaderColor = make_color_hsv(0,0,255)
shaderIndex = 255;

wave = false; wavetimer = 0; waveCooldown = 5000