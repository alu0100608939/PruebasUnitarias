# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  
  def initialize (x,y)
    @x,@y = x,y
  end
  
  def to_s
    "#{@x}/#{@y}"
  end
  
end
