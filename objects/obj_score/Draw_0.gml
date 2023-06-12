var _points = round(points);

var _x = 120;
var _y = 200;
	
draw_set_font(fnt_score);
	
draw_text(_x, _y, $"Highest score: {_points}");
draw_text(_x, _y + 150, $"Enemies killed: {global.enemies_killed}");
draw_text(_x, _y + 300, $"Total deaths: {global.total_deaths}");
	
draw_set_font(-1);

if (points < global.highest_score)
{
	var _increment_points = global.highest_score * 0.005;
	points += _increment_points;
}