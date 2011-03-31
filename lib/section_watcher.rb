# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'watcher'

class SectionWatcher < Watcher
  def watch_section(length)
    watch(length)
  end
end
