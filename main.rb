# GalagaInvaders has a coordinate system, with the origin in the upper left,
# x increasing from left to right, and y increasing from top to bottom. For
# example, the upper left corner is (0, 0) and the lower right corner is
# (800, 800).

require_relative 'ship'

class GalagaInvaders

  SCREEN_WIDTH = 800
  SCREEN_HEIGHT = 800
  GAME_TITLE = "Galaga Invaders"
  

  def initialize(game_title, ship)
    @caption = game_title
    @ship = ship
  end

  def update
    @ship.move_missiles
  end

  def draw
    @ship.draw
    @ship.draw_missiles
  end

  def show
    while (true) do
      update
      draw
    end
  end

  def key_pressed(key)
    case key
    when 'a'
      @ship.move_left
    when 'd'
      @ship.move_right
    when ' '
      @ship.fire_missile
    end
  end
  
  def get_screen_center
    SCREEN_WIDTH / 2
  end

end
GalagaInvaders.new(GAME_TITLE, Ship.new(get_screen_center, SCREEN_HEIGHT - Ship::HEIGHT))
