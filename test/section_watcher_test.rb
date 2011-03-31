# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'mocha'
require 'section_watcher'

class SectionWatcherTest < Test::Unit::TestCase
  def test_watch_section
    length = 20

    m = mock()
    m.expects(:watch_method).once.with(length)

    w = SectionWatcher.new(m, :watch_method)
    w.watch_section(length)
  end
end
