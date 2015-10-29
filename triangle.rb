require_relative "shape"

class Rectangle

    attr_reader :x, :y, :side_length, :color, :zorder

    def initialize(x,y,side_length)
		@zorder = 1
		@color = Gosu::Color.argb(0xff_ff0000)
		@x = x
		@y = y
        	@side_length = side_length
        	@height = (Math.sqrt(3) * side_length) / 2
	end

	def draw_shape
        Gosu.draw_line(x, y, color, x + side_length, y, color, zorder)
        Gosu.draw_line(x + side_length, y, color, x / 2, y + height, color, zorder)
	Gosu.draw_line(x / 2, y + height, color, x, y, color, zorder)

        for i in 0...side_length / 2
	    Gosu.draw_line(x + i, y, color, x + i, y + (Math.sqrt(3) * i), color, zorder)
		end
        for i in side_length / 2...side_length
            Gosu.draw_line(x + i, y, color, x + i, y + height - (Math.sqrt(3) * i), color, zorder)
        end
		
	end
end
