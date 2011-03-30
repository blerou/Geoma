# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'shape'

class Point < Shape
  def initialize(x, y)
    @x = x
    @y = y
  end

  def move_to(x, y)
    @x = x
    @y = y
    notify_watchers(:watch_point, @x, @y)
  end
end
