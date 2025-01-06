/// @description Insert description here
// You can write your code in this editor
			for(i = 0; i < instance_number(obj_Source); i++){
				inst = instance_find(obj_Source, i);
				if(inst.connection = self){
					inst.connection = noone;
					input = 0;
				}
			}
			for(i = 0; i < instance_number(obj_wallSource); i++){
				inst = instance_find(obj_wallSource, i);
				if(inst.connection = self){
					inst.connection = noone;
					input = 0;
				}
			}