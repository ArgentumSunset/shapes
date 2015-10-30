require "gosu"
require_relative "rectangle"
require_relative "triangle"

class GameWindow < Gosu::Window

		WIDTH = 640
		HEIGHT = 400

	def initialize
    super WIDTH, HEIGHT
		self.caption = "SHAPES MURDER"
		@triangles = []
		@rectangles = []
		@arrows = []
		@rando = false
	end

	def draw
		@rectangles.each{|rect| rect.draw_shape}
		@triangles.each{|tri| tri.draw_shape}
		if @rando
			for i in 0..25
				tri = Triangle.new(rand(640), rand(400), rand(200))
				rec = Rectangle.new(rand(640), rand(400), rand(200), rand(200))
				tri.draw_shape
				rec.draw_shape
			end
		end
	end

	def button_down(id)
		close if id == Gosu::KbEscape
		if id == Gosu::KbR && !@rando
			@rectangles.push(Rectangle.new(rand(640), rand(400), rand(200), rand(200)))
		end
		if id == Gosu::KbT && !@rando
			@triangles.push(Triangle.new(rand(640), rand(400), rand(200)))
		end
		if id == Gosu::KbA && !@rando
			@arrows.push(Arrow.new(rand(640), rand(400), rand(200), rand(200)))
		if id == Gosu::KbSpace
			@triangles = []
			@rectangles = []
			@arrows = []
			@rando = !@rando
		end
	end
end

window = GameWindow.new
window.show
