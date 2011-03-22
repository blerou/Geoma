# To change this template, choose Tools | Templates
# and open the template in the editor.

class Shape
  def initialize
    @events = []
  end

  def connect(ev, &func)
    @events << [ev, func]
  end

  def fire(fired_ev, *args)
    @events.each { |item| item[1].call(*args) if item[0] == fired_ev }
  end

  def draw(plot)
    raise NotImplementedError.new
  end
end
