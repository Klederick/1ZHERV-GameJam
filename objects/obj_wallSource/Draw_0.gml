/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_stats)
draw_self();
draw_text_color(x+4, y-16, string(output), c_white, c_white, c_white, c_white, image_alpha)

if(obj_player.connecting and self = obj_player.connectingObject){
	draw_line(x+sprite_width/2, y+sprite_height/2, mouse_x, mouse_y);
}
draw_set_alpha(image_alpha)
if(connection != noone){
	draw_line(x+sprite_width/2, y+sprite_height/2, connection.x+connection.sprite_width/2, connection.y+connection.sprite_height/2);	
}
draw_set_alpha(1);