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

  def test_length
    assert_equal 2, @s.length
  end

  def test_moved
    @p1.move_to 1, 7
    assert_equal 3, @s.length
  end
end
