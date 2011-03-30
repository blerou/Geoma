# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'mocha'
require 'point_watcher'

class PointWatcherTest < Test::Unit::TestCase
  def test_watch
    new_x, new_y = 1, 2

    m = mock()
    m.expects(:watch_method).once.with(new_x, new_y)

    w = PointWatcher.new(m, :watch_method)
    w.watch_point(new_x, new_y)
  end
end
