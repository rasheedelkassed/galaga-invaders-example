class Alien 
  include Hurtable
  include Hitable
  include Showable
  
  attr_accessor :location, :hit_points, :sprite
  
  def initialize(args)
    @location = args.fetch[:location]
    @hit_points = args.fetch[:hit_points]
	 @sprite = args.fetch[:sprite]
  end

end
