class Brick
  def initialize(starting_x, starting_y)
    @x = starting_x
    @y = starting_y
    @width = 1
    @height = 1
    @broken = false
    @items = []
  end

  def collision_points()
    (@y..@y+@width).map do |y|
      [@x, y]
    end
  end

  def collision?(ball)
    intersect = ball.collision_points() | collision_points()
    intersect.empty?
  end

  def collide
    bust
  end

private

  def drop()
    tmp = @items
    @items = []
    return tmp
  end

  def bust()
    @broken = true
    drop()
  end
end
