# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'shape'
require 'point_watcher'

class Section < Shape
  def initialize(p1, p2)
    p1.add_watcher(PointWatcher.new(self, :watch_p1))
    p2.add_watcher(PointWatcher.new(self, :watch_p2))
  end

  private
  def watch_p1(x, y)
    @x1, @y1 = x, y
    notify
  end

  def watch_p2(x, y)
    @x2, @y2 = x, y
    notify
  end

  def notify
    unless @x1.nil? or @x2.nil?
      notify_watchers(:watch_section, length)
    end
  end

  def length
    Math.sqrt((@x1-@x2)**2 + (@y1-@y2)**2)
  end
end
