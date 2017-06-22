#
# クラスで実装したAdapterパターン
#
class AdapterBarista
  def brew
    OldBarista.new.make
  end
end

class OldBarista
  def make
    'コーヒーを淹れる'
  end
end

barista = AdapterBarista.new
puts barista.brew

#
# 特異メソッドで実装したAdapterパターン
#
barista = OldBarista.new

def barista.brew
  make
end

puts barista.brew
