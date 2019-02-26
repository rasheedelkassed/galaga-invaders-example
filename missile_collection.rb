class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(weapon)
   missile = Missile.new(weapon.muzzle_location)
   missile.launch(weapon.propelent_velocity)
   add(missile)
  end

end
