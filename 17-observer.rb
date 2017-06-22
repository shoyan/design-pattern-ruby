# Copyright (c) 2017 BANDO Masaya
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

require 'observer'

class Person
  include Observable
  attr_reader :address
  attr_accessor :name

  def initialize(name, address)
    @name = name
    @address = address

    add_observer(Waterworks.new)
    add_observer(Gas.new)
  end

  def address=(new_address)
    @address = new_address
    changed
    notify_observers(self)
  end
end

class Gas
  def update(person)
    puts "ガス：#{person.name}様の住所を#{person.address}に変更しました"
  end
end

class Waterworks
  def update(person)
    puts "水道：#{person.name}様の住所を#{person.address}に変更しました"
  end
end

person = Person.new('太郎', '東京都江戸川区')
person.address = '埼玉県浦和区'
