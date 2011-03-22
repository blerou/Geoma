# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'mocha'
require 'point'

class PointTest < Test::Unit::TestCase
  def setup
    @x = 1
    @y = -2
    @point = Point.new(@x, @y)
  end

  def test_move
    new_x = 2
    new_y = 3

    @point.connect(:move) { |x, y|
      assert_equal new_x, x
      assert_equal new_y, y
    }

    @point.move_to new_x, new_y

    plot = mock()
    plot.expects(:draw_point).with(new_x, new_y)

    @point.draw(plot)
  end
end
