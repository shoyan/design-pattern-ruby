class Cookie
  def initialize(number)
    @number = number
  end

  def echo
    puts "クッキー(#{@number})ができました。"
  end
end

class Cake
  def initialize(number)
    @number = number
  end

  def echo
    puts "ケーキ(#{@number})ができました。"
  end
end

class YummyFactory
  def initialize(number)
    @foods = []
    number.times do |i|
      @foods << make_food(i)
    end
  end

  def create
    @foods
  end
end

class CakeFactory < YummyFactory
  def make_food(number)
    Cake.new(number)
  end
end

class CookieFactory < YummyFactory
  def make_food(number)
    Cookie.new(number)
  end
end

factory = CakeFactory.new(3)
cakes = factory.create
cakes.each {|cake| cake.echo }

factory = CookieFactory.new(5)
cookies = factory.create
cookies.each {|cookie| cookie.echo }
