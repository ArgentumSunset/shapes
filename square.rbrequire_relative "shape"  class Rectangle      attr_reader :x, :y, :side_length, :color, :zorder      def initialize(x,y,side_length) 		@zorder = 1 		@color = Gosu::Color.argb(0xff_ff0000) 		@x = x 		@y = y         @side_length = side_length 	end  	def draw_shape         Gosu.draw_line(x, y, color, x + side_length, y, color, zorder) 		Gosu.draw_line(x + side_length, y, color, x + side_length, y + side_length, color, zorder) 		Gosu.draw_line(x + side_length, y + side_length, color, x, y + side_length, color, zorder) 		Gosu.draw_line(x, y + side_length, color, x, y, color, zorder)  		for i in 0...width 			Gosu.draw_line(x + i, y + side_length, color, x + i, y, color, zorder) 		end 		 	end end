require_relative "shape"

class Square

    attr_reader :x, :y, :side_length, :color, :zorder

    def initialize(x,y,side_length)
		@zorder = 1
		@color = Gosu::Color.argb(0xff_ff0000)
		@x = x
		@y = y
        @side_length = side_length
	end

	def draw_shape
        Gosu.draw_line(x, y, color, x + side_length, y, color, zorder)
		Gosu.draw_line(x + side_length, y, color, x + side_length, y + side_length, color, zorder)
		Gosu.draw_line(x + side_length, y + side_length, color, x, y + side_length, color, zorder)
		Gosu.draw_line(x, y + side_length, color, x, y, color, zorder)

		for i in 0...width
			Gosu.draw_line(x + i, y + side_length, color, x + i, y, color, zorder)
		end
		
	end
end
