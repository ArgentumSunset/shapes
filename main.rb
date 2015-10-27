require "gosu"
require_relative "shape"
require_relative "rectangle"

class GameWindow < Gosu::Window

		WIDTH = 640
		HEIGHT = 400

	def initialize
    super WIDTH, HEIGHT
		self.caption = "SHAPES MURDER"
	end

	def draw
		rec = Rectangle.new(90,180,10,300)
		rec.draw_shape
	end

end

window = GameWindow.new
window.show