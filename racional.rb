# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  attr_reader :x, :y
  def initialize (x,y)
    @x = x/gcd(x,y)
    @y = y/gcd(x,y)
  end
  
  def to_s
    if @y == 1
      return "#{@x}"
    end
    "#{@x}/#{@y}"
  end
  
  def suma(other)
    x = @x*other.y + other.x*@y
    y = @y*other.y
    
    v = x/gcd(x,y)
    u = y/gcd(x,y)
    
    z = Fraccion.new(v,u) 
  end
  
   def resta(other)
    x = @x*other.y - other.x*@y
    y = @y*other.y
    
    v = x/gcd(x,y)
    u = y/gcd(x,y)
    
    z = Fraccion.new(v,u) 
  end
  
  def producto(other)
    x = @x*other.x 
    y = @y*other.y
    
    v = x/gcd(x,y)
    u = y/gcd(x,y)
    
   z = Fraccion.new(v,u)
  end
  
  def division(other)
    x = @x*other.y 
    y = @y*other.x
  
    v = x/gcd(x,y)
    u = y/gcd(x,y)
    
   z = Fraccion.new(v,u)
  end
  
  def == (other) 
    if other.instance_of? Fixnum
      return @x/@y == other
    end
    @x == other.x && @y == other.y
  end
  
end
