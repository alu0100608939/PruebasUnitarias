# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  attr_reader :x, :y
  def initialize (x,y)
    @x,@y = x,y
  end
  
  def to_s
    "#{@x}/#{@y}"
  end
  
  def suma(other)
    x = @x*other.y + other.x*@y
    y = @y*other.y
    
    v = x/gcd(x,y)
    u = y/gcd(x,y)
    
    z = Fraccion.new(u,v) 
  end
  
   def resta(other)
    x = @x*other.y - other.x*@y
    y = @y*other.y
    
    v = x/gcd(x,y)
    u = y/gcd(x,y)
    
    z = Fraccion.new(u,v) 
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
  
end
