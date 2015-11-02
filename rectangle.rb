class Rectangle

	attr_reader :x, :y, :width, :length, :color, :zorder

    def initialize(x,y,width,length,color,zorder)
        @zorder = zorder
		if(color)
			@color = color
		elsif(!color)
			@color = Gosu::Color.new(0xff_000000)
			@color.red = rand_color_component
			@color.green = rand_color_component
			@color.blue = rand_color_component
		end
		@x = x
		@y = y
		@width = width
		@length = length
	end

	def draw_shape
		Gosu.draw_line(x, y, color, x + width, y, color, zorder)
		Gosu.draw_line(x + width, y, color, x + width, y + length, color, zorder)
		Gosu.draw_line(x + width, y + length, color, x, y + length, color, zorder)
		Gosu.draw_line(x, y + length, color, x, y, color, zorder)

		for i in 0...width
			Gosu.draw_line(x + i, y + length, color, x + i, y, color, zorder)
		end
		
	end

	def rand_color_component
		rand(256 - 60) + 60 # Not too dark!
	end

end