xTo = follow.x; yTo = follow.y;


if(follow.spawned){
x += (xTo - x)/25;
y += (yTo - y)/25;
camera_set_view_pos(view_camera[0], x - (camwidth/2) - 148, y - (camheight/2) - 196)
}else{
x += (xTo - x);
y += (yTo - y);
camera_set_view_pos(view_camera[0], x - (camwidth/2) - 148, y - (camheight/2) - 196)
}



var _b = ds_map_find_first(background_map);
repeat(ds_map_size(background_map))
{
	layer_x(_b, background_map[? _b] * obj_player.x-(camwidth/2));
	_b = ds_map_find_next(background_map, _b);
}
	
