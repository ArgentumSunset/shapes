require "gosu"
require_relative "shape"
require_relative "rectangle"
require_relative "triangle"
require_relative "square"

class GameWindow < Gosu::Window

		WIDTH = 640
		HEIGHT = 400

	def initialize
    super WIDTH, HEIGHT
		self.caption = "SHAPES MURDER"
	end

	def draw
		rec = Rectangle.new(90,180,10,300)
        	tri = Triangle.new(300,300,50)
		rec.draw_shape
        	tri.draw_shape
	end

end

window = GameWindow.new
window.show
