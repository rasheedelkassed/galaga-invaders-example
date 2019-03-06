module Hurtable

	attr_accessor :hit_points

  DAMAGE = 1

  def damage
    @hit_points -= DAMAGE
  end

  def destroyed?
    @hit_points <= 0
  end
end

module Hitable
  def self.hit?(attacked, attacker)
    # Returns true or false based on the simple linear distance
    # from `attacker.location` to `self.location`
  end
end

module Showable
  def draw
    # Draws the `sprite` at `location`
  end
end