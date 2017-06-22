require 'singleton'

class Settings
  include Singleton
end

a = Settings.instance
b = Settings.instance
p [a.object_id,b.object_id] # a and b are same object

Settings.new # error (`new' is private)
