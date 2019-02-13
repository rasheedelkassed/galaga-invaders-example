# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200
  MOVE_MULTIPLIER = 5

  def initialize(x_position, y_position)
    @x_position = x_position
    @y_position = y_position
    @missile_coordinates = []
  end

  def move_left
    move(-MOVE_MULTIPLIER)
  end

  def move_right
    move(MOVE_MULTIPLIER)
  end
  
  def move(direction_to_move)
    @x_position += direction_to_move
  end

  def fire_missle
    @missile_coordinates << [@x_position, @y_position - HEIGHT / 2]
  end

  def move_missiles
    @missile_coordinates.each do |missile|
      missile -= 10
    end
  end

  def draw
    # Ignore this
  end

  def draw_missiles
    @missile_coordinates.each do |missile|

    end
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
5. How does applying SRP naturally lead to good design?
=end
