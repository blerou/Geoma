# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'shape'

class Section < Shape
  def initialize(p1, p2)
    super()
    @x1 = p1.x
    @y1 = p1.y
    @x2 = p2.x
    @y2 = p2.y
    p1.connect(:move) { |x, y| @x1 = x; @y1 = y; fire(:length, length) }
    p2.connect(:move) { |x, y| @x2 = x; @y2 = y; fire(:length, length) }
  end

  def length
    Math.sqrt((@x1-@x2)**2 + (@y1-@y2)**2)
  end
end
