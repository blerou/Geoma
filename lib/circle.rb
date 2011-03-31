# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'shape'
require 'point_watcher'
require 'section_watcher'

class Circle < Shape
  def initialize(origo, radius)
    origo.add_watcher(PointWatcher.new(self, :watch_origo))
    radius.add_watcher(SectionWatcher.new(self, :watch_radius))
  end

  private
  def watch_origo(x, y)
    @x, @y = x, y
    notify
  end

  def watch_radius(r)
    @r = r
    notify
  end

  def notify
    unless @x.nil? or @r.nil?
      notify_watchers(:watch_circle, @x, @y, @r)
    end
  end
end
