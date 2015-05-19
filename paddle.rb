class Paddle
  def initialize(starting_x, starting_width = 4)
    @x = starting_x
    @y = 0
    @width = starting_width
  end

  def update_left()
    @x++
    return [x, y]
  end
  def update_right()
    @x--
    return [x, y]
  end

  attr_reader :x, :y, :width
end


#
# class A
#   def initialize(m)
#     @example = m
#   end
#
#   attr_reader :example
#   # def example
#     # return @example
#   # end
# end
#
# tmp = A(4)
# puts tmp.example
