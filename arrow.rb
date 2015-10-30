class Triangle

    attr_reader :x, :y, :width, :color, :zorder, :height

    def initialize(x,y,width,height)
		@zorder = 10
		@color = Gosu::Color.new(0xff_000000)
		@color.red = rand_color_component
		@color.green = rand_color_component
		@color.blue = rand_color_component
		@x = x
		@y = y
    @width = width
    @height = height
	end

	def draw_shape
      rec = Rectangle.new()
      tri = Triangle.new(x,y+rec.height,width)
	end
	
	private

	def rand_color_component
		rand(256 - 40) + 40
	end
end
