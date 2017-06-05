class Coffee
  attr_accessor :state

  def initialize
    @state = OrdinaryState.new
  end

  def brew
    @state.brew
  end
end

class OldState
   def brew
     'ちょっと苦い'
  end
end

class OrdinaryState
  def brew
    'いい香り'
  end
end

coffee = Coffee.new
puts coffee.brew

coffee.state = OldState.new
puts coffee.brew
