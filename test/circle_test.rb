# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'mocha'
require 'point'
require 'section'
require 'circle'

class CircleTest < Test::Unit::TestCase
  def test_moving_components
    origo = Point.new(2, 2)
    r1 = Point.new(1, 1)
    r2 = Point.new(1, 2)
    radius = Section.new(r1, r2)
    circle = Circle.new(origo, radius)
    
    origo_new_x, origo_new_y, new_r = 3, 3, 2

    w = mock()
    w.expects(:watch_circle).once.with(origo_new_x, origo_new_y, new_r)

    circle.add_watcher(w)

    origo.move_to origo_new_x, origo_new_y
    r2.move_to 1, 7
    r1.move_to 1, 7+new_r
  end
end
