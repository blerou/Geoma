# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'watcher'

class PointWatcher < Watcher
  def watch_point(new_x, new_y)
    watch(new_x, new_y)
  end
end
