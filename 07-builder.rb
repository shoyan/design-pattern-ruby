class Director
  def initialize(builder)
    @builder = builder
  end

  def cook
    @builder.add_water(50)
    @builder.add_shochu(50)
  end
end

class ImoShochuBuilder
  def initialize
    @shochu = ImoShochu.new
  end

  def add_water(amount)
    @shochu.water += amount
  end

  def add_shochu(amount)
    @shochu.shochu += amount
  end

  def result
    @shochu
  end
end

class KomeShochuBuilder
  def initialize
    @shochu = KomeShochu.new
  end

  def add_water(amount)
    @shochu.water += amount
  end

  def add_shochu(amount)
    @shochu.shochu += amount
  end

  def result
    @shochu
  end
end

class ImoShochu
  attr_accessor :water, :shochu

  def initialize
    @name = '芋'
    @water  = 0
    @shochu = 0
  end
end

class KomeShochu
  attr_accessor :water, :shochu

  def initialize
    @name = '米'
    @water  = 0
    @shochu = 0
  end
end

builder = ImoShochuBuilder.new
director = Director.new(builder)
director.cook

p builder.result

builder = KomeShochuBuilder.new
director = Director.new(builder)
director.cook

p builder.result
