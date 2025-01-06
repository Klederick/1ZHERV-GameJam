/// @description Insert description here
// You can write your code in this editor
activated = false;
input = 0; image_speed = 0; required = 12;
outlet = instance_create_layer(x-1, y-1, "Electricity", obj_machineInput);
//
cooldown = 150; timer = 0;
//
hp = 100; maxhp = 100;

status = instance_create_layer(x,y,"Machines", obj_statusBar);
status.source = self;