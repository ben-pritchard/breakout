class Ball
  def initialize(paddle_x, paddle_y)
    @x = paddle_x
    @y = paddle_y
    @direction = :up_left # , up_right, down_left, down_right
  end

  def collision_points()
    [[@x, @y], [@x+1, @y], [@x+1, @y+1], [@x, @y+1]]
  end
  
private

  def up_left
    @y++
    @x--
    return [@x, @y]
  end

  def up_right
    @y++
    @x++
    return [@x, @y]
  end

  def down_left
    @y--
    @x--
    return [@x, @y]
  end

  def down_right
    @y--
    @x++
    return [@x, @y]
  end

  attr_reader :x, :y

  def update()
    case self.direction
    when :up_left
      self.up_left()
    when
end
