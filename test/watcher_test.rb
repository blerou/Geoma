# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'mocha'
require 'watcher'

class WatcherTest < Test::Unit::TestCase
  def test_watch
    a, b, c = :foo, :bar, :baz

    m = mock()
    m.expects(:watch_method).once.with(a, b, c)

    w = Watcher.new(m, :watch_method)
    w.watch(a, b, c)
  end
end
