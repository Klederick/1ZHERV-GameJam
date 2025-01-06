/// @description Insert description here
// You can write your code in this editor
if(r < 192){
	r += 2;	
}else{
	instance_destroy();	
}
var _list = ds_list_create();
var _num = collision_circle_list(x, y, r, obj_enemy, false, true, _list, false);

if(_num > 0){
	for(i = 0; i < _num; i++){
		if(!array_contains(enemyRegistry, ds_list_find_value(_list, i))){
			ds_list_find_value(_list, i).hp -= 4;
		}
		array_insert(enemyRegistry, curlen, ds_list_find_value(_list, i));
	}
}
ds_list_destroy(_list);