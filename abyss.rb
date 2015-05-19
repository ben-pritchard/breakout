class Abyss
  def initialize(x:, y:, width: )
      @x = x
      @y = y
      @width = width
  end

  def absorb(thing)
  end

  # Is the item meeting the abyss?
  def collision?(thing)
    thing.y == @y
  end
end

class Thing
  def initialize(x:, y:)
    @x = x
    @y = y
  end
  
  attr_reader :x, :y
end

if __FILE__ == $0
  abyss = Abyss.new(x: 100, y:100, width: 200)
  puts abyss.collision?(Thing.new(x: 100, y:101))
  puts abyss.collision?(Thing.new(x: 100, y:100))
end
