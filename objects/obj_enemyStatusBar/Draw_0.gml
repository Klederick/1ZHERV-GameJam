/// @description Insert description here
// You can write your code in this editor
x = source.x
y = source.y
if(source != noone){
	if(source.image_xscale = 1){
		draw_rectangle(x - source.sprite_width/2, y - source.sprite_height/2 - 8, x + source.sprite_width/2, y - source.sprite_height/2 - 4, true);	
		draw_set_color(c_lime)
		draw_rectangle(x - source.sprite_width/2 + 1, y - source.sprite_height/2 - 7, x - source.sprite_width/2 + (source.hp/source.maxhp)*(source.sprite_width) - 1, y - source.sprite_height/2 - 5, false);	
		draw_set_color(c_white);

	}else{
		draw_rectangle(x - source.sprite_width/2, y - source.sprite_height/2 - 8, x + source.sprite_width/2, y - source.sprite_height/2 - 4, true);	
		draw_set_color(c_lime)
		draw_rectangle(x + source.sprite_width/2 + 1, y - source.sprite_height/2 - 7, x + source.sprite_width/2 - (source.hp/source.maxhp)*(source.sprite_width) - 1, y - source.sprite_height/2 - 5, false);	
		draw_set_color(c_white);
	
	}
}