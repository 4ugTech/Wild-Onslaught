//Draw healthbar
draw_healthbar(25, 50, 400, 25, hp, c_black, c_red, c_lime, 0, true, true);

//Draw score
draw_set_font(font_score)
draw_text(50, 75, "Score: " + string(score))

//Draw timer
var minutes = floor(get_timer() / 60000000)
var seconds = floor(get_timer() / 1000000)

if(seconds < 10)
{
	draw_text(1250, 25, string(floor(get_timer() / 60000000)) + " : " + "0" + string(floor(get_timer() / 1000000)))
}
else
{
	draw_text(1250, 25, string(floor(get_timer() / 60000000)) + " : " + string(floor(get_timer() / 1000000)))	
}

