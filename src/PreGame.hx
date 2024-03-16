package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;
class PreGame 
{
	var title_data = {
		x : Gfx.screenwidth / 2,
		y : Gfx.screenheight / 2,
		col : Col.WHITE,
		string : "Draze Studios.",
		size : 3,
	};
	private function init()
	{
		Gfx.clearcolor = Col.BLACK;
	}
	private function update() 
	{
		Text.size = title_data.size;
		Text.display(title_data.x, title_data.y, title_data.string, title_data.col);
		//pass the scene over to Menu when a certain amount of time has passed
		if (Core.time >= 7) {
			Scene.change(Menu);
		}
	}
}