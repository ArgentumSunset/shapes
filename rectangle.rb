require_relative "shape"

class Rectangle

	attr_reader :x, :y, :width, :length, :color, :zorder

	def initialize(x,y,width,length)
		@zorder = 1
		@color = Gosu::Color.argb(0xff_ff0000)
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
end