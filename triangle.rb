class Triangle

    attr_reader :x, :y, :side_length, :color, :zorder, :height

    def initialize(x,y,side_length,color,zorder)
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
    @side_length = side_length
    @height = (Math.sqrt(3) * side_length) / 2
	end

	def draw_shape
      Gosu.draw_line(x, y, color, x + side_length, y, color, zorder)
      Gosu.draw_line(x + side_length, y, color, x  + side_length / 2, y - height, color, zorder)
			Gosu.draw_line(x + side_length / 2, y - height, color, x, y, color, zorder)

  		for i in 0...side_length / 2
	    	Gosu.draw_line(x + i, y, color, x + i, y - (Math.sqrt(3) * i), color, zorder)
			end
      for i in side_length / 2...side_length
        Gosu.draw_line(x + i, y - height + (Math.sqrt(3) * (i - side_length / 2)), color, x + i, y, color, zorder)
      end
	end

	private

	def rand_color_component
		rand(256 - 40) + 40
	end
end
