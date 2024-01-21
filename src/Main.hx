import haxegon.*;

class Main {
	var player = {
		x: 120,
		y: 120,
	}
  private var screen_col = 0xFF00FF; // Use the Col enum to specify the color or use Hex Code for the colors!
  private var x: Int = 12; // Use Int to specify integer values
  private var y: Int = 15;
  private var width: Int = 50;
  private var height: Int = 70;
  private var color: Int = 4; // Use Int to specify integer values
  final WINDOW_WIDTH:Int = 720;
  final WINDOW_HEIGHT:Int = 490;
  public function new() {
    init();
	update();
  }

  function playerMovement() {
    if (Input.pressed(Key.LEFT)) {
      player.x -= 10;
    }
    if (Input.pressed(Key.RIGHT)) {
      player.x += 10;
    }
    if (Input.pressed(Key.UP)) {
      player.y -= 10;
    }
    if (Input.pressed(Key.DOWN)) {
      player.y += 10;
    }
    // Making sure the player doesn't get off the screen should be added here
	if (player.x >= WINDOW_WIDTH) {
		player.x = WINDOW_WIDTH;
	//else if (player.x <= 0) {}
	}
  }

  function init() {
    Gfx.resizescreen(0, 0); // Specify the screen size
    Gfx.clearcolor = screen_col;
  }

  function update() {
    Gfx.fillbox(player.x, player.y, width, height, color);
    playerMovement();
  }
}
