/// @description Insert description here
// You can write your code in this editor
if(target != noone){
	if(instance_exists(target)){
		move_towards_point(target.x,target.y, 8);
		if(point_distance(x,y,target.x,target.y) < 16){
			target.hp -= 51; instance_destroy();	
		}
	}else{
		instance_destroy();	
	}
}