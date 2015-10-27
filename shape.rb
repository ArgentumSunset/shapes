class Shape

	attr_accessor :x, :y, :length, :height, :color, :zorder

	def initialize
		@x, @y, @length, @width = 0.0
		@color = Gosu::Color.new(0xff_000000)
		@color.red = rand_color_component
		@color.green = rand_color_component
		@color.blue = rand_color_component
		@zorder = 0
	end

	def draw_shape
	end

	def rand_color_component
		rand(256 - 60) + 60 # Not too dark!
	end

end