# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'shape'

class Point < Shape
  attr_reader :x, :y
  def initialize(x, y)
    super()
    @x = x
    @y = y
  end

  def move_to(x, y)
    @x = x
    @y = y
    fire(:move, @x, @y)
  end

  def draw(plot)
    plot.draw_point @x, @y
  end
end
