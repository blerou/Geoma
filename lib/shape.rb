# To change this template, choose Tools | Templates
# and open the template in the editor.

class Shape
  def add_watcher(watcher)
    @watchers ||= []
    @watchers << watcher
  end

  def notify_watchers(method, *args)
    @watchers.each { |watcher| watcher.send(method, *args) }
  end
end
