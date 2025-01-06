/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;

inputa = instance_create_layer(x - 8, y - 12, "Electricity", obj_machineInput);
inputb = instance_create_layer(x + 6, y - 12, "Electricity", obj_machineInput);

output =  instance_create_layer(x - 1, y + 14, "Electricity", obj_Source);