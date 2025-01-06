/// @description Insert description here
// You can write your code in this editor
if(source != noone){
	if(source.image_xscale = 1){
		draw_rectangle(x - source.sprite_width/2, y - source.sprite_height/2 - 8, x + source.sprite_width/2, y - source.sprite_height/2 - 4, true);	
		draw_set_color(c_lime)
		draw_rectangle(x - source.sprite_width/2 + 1, y - source.sprite_height/2 - 7, x - source.sprite_width/2 + (source.hp/source.maxhp)*(source.sprite_width) - 1, y - source.sprite_height/2 - 5, false);	
		draw_set_color(c_white);

		draw_rectangle(x - source.sprite_width/2, y - source.sprite_height/2 - 12, x + source.sprite_width/2, y - source.sprite_height/2 - 8, true);	
		draw_set_color(c_orange)
		draw_rectangle(x - source.sprite_width/2 + 1, y - source.sprite_height/2 - 11, x - source.sprite_width/2 + (source.timer/source.cooldown)*(source.sprite_width) - 1, y - source.sprite_height/2 - 9, false);	
		draw_set_color(c_white);
	}else{
		draw_rectangle(x - source.sprite_width/2, y - source.sprite_height/2 - 8, x + source.sprite_width/2, y - source.sprite_height/2 - 4, true);	
		draw_set_color(c_lime)
		draw_rectangle(x + source.sprite_width/2 + 1, y - source.sprite_height/2 - 7, x + source.sprite_width/2 - (source.hp/source.maxhp)*(source.sprite_width) - 1, y - source.sprite_height/2 - 5, false);	
		draw_set_color(c_white);

		draw_rectangle(x - source.sprite_width/2, y - source.sprite_height/2 - 12, x + source.sprite_width/2, y - source.sprite_height/2 - 8, true);	
		draw_set_color(c_orange)
		draw_rectangle(x + source.sprite_width/2 + 1, y - source.sprite_height/2 - 11, x + source.sprite_width/2 - (source.timer/source.cooldown)*(source.sprite_width) - 1, y - source.sprite_height/2 - 9, false);	
		draw_set_color(c_white);		
	}
}