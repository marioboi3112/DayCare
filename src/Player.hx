package;

/*
 * @author obi3112
 * 
 */

import haxegon.*;

class Player
{

	public function new() {
		update();
	}
	
	var WINDOW_WIDTH = Gfx.screenwidth;
	var WINDOW_HEIGHT = Gfx.screenheight;
	private static var player = {
		x : 120,
		y : 120,
		width : 30,
		height : 30,
		col : Col.RED,
		speed : 10,
	};
	
	private function PlayerMovementLogic() {
		//player movement
		if (Input.pressed(Key.W)) {
			player.y -= player.speed;
		}
		if (Input.pressed(Key.S)) {
			player.y += player.speed;
		}
		if (Input.pressed(Key.A)) {
			player.x -= player.speed;
		}
		if (Input.pressed(Key.D)) {
			player.x += player.speed;
		}
		trace(Gfx.screenwidth);
		//player collision that checks when the player goes off screen
		
		if (player.x >= Gfx.screenwidth - player.width) {
			player.x = Gfx.screenwidth - player.width;
		}
		if (player.y >= Gfx.screenheight - player.height) {
			player.y = Gfx.screenheight - player.height;
		}
		if (player.x <= 0) {
			player.x = 0;
		}
		if (player.y <= 0) {
			player.y = 0;
		}	
		
	}
	
	private function init() {
	
	}
	
	private function update() {
		Gfx.resizescreen(0, 0);
		Gfx.fillbox(player.x, player.y, player.width, player.height, player.col);
		PlayerMovementLogic();
	}
	
}