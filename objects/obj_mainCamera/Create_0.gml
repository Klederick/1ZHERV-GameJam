/// @description Insert description here
// You can write your code in this editor
follow = obj_player
xTo = x;
yTo = y;
//parallax control
background_map = ds_map_create();
background_map[? layer_get_id("Background")] = 0.05; // <-------
//lower the number the slower it moves

camwidth = 320; camheight = 240;
