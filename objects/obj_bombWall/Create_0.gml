/// @description Insert description here
// You can write your code in this editor
activated = false;
input = 0; required = 8;
outlet = instance_create_layer(x-1, y-1, "Electricity", obj_machineInput);
//
hp = 750; maxhp = 750;
//
cooldown = 210; timer = 0;

status = instance_create_layer(x,y,"Machines", obj_statusBar);
status.source = self;