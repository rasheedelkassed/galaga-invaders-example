class Fort
  include Hurtable
  include Hitable
  include Showable
  def initialize(args)
    @location = args.fetch[:location]
    @hit_points = args.fetch[:hit_points]
	 @sprite = args.fetch[:sprite]
  end

end
