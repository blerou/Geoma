# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'mocha'
require 'point'
require 'section'

class SectionTest < Test::Unit::TestCase
  def setup
    @p1 = Point.new(1, 2)
    @p2 = Point.new(1, 4)
    @s  = Section.new(@p1, @p2)
  end

  def test_point_moves
    watcher = mock()
    watcher.expects(:watch_section).once.with(6.0)
    @s.add_watcher(watcher)

    @p1.move_to 2, 2
    @p2.move_to 2, 8
  end
end
