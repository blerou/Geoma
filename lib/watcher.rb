# To change this template, choose Tools | Templates
# and open the template in the editor.

class Watcher
  def initialize(subject, method)
    @subject, @method = subject, method
  end

  def watch(*args)
    @subject.send(@method, *args)
  end
end
