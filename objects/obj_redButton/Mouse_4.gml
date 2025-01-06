/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(!instance_exists(obj_enemySpawner)){
		obj_player.wave = true;
		obj_player.wavetimer = obj_player.waveCooldown
		instance_destroy();
	}
}