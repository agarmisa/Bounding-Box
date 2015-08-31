class BoundingBox
    attr_reader :width, :height, :left, :right, :top, :bottom
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
    @left =  x
    @right = x + width
    @bottom = y
    @top = y + height
  end

  def contains_point?( x, y)
    (x >= @left) && (x <= @right) && (y>=@bottom) && (y<= @top)
  end
