package;

/*
 * @author obi3112
 * 
 */

import haxegon.*;

class Player extends Main
{

	public function new() {
		super();
		update();
	}
	
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
		
		if (player.x >= WINDOW_WIDTH - player.width) {
			player.x = WINDOW_WIDTH - player.width;
		}
		if (player.y >= WINDOW_HEIGHT - player.height) {
			player.y = WINDOW_HEIGHT - player.height;
		}
		if (player.x <= 0) {
			player.x = 0;
		}
		if (player.y <= 0) {
			player.y = 0;
		}	
		
	}
	
	private function loadPlayerSprite() {
		var spr = Gfx.loadimage();
	}
	
	override private function init() {
	
	}
	
	override private function update() {
		Gfx.resizescreen(0, 0);
		Gfx.fillbox(player.x, player.y, player.width, player.height, player.col);
		PlayerMovementLogic();
	}
	
}