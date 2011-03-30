# To change this template, choose Tools | Templates
# and open the template in the editor.

class PointWatcher
  def initialize(subject, method)
    @subject, @method = subject, method
  end

  def watch_point(new_x, new_y)
    @subject.send(@method, new_x, new_y)
  end
end
