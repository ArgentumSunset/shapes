class Arrow

    attr_reader :x, :y, :width, :color, :zorder, :height

    def initialize(x,y,width,height,color)
		@zorder = 11
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
        @height = height
	end

	def draw_shape
        rec = Rectangle.new(x+(width/4),y,width / 2,height,color,zorder)
        tri = Triangle.new(x,y,width,color,zorder)
        rec.draw_shape
        tri.draw_shape
	end
	
	private

	def rand_color_component
		rand(256 - 40) + 40
	end
end
