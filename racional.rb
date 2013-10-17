# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  attr_reader :x, :y # Accesors, declaracion de getters y setters
  def initialize (x,y) # Método llamado por el constructor. Recibe un numerador y denominador y calcula su version simplificada usando gcd
    @x = x/gcd(x,y)
    @y = y/gcd(x,y)
  end
  
  def to_s #Formato de cadena, será x (numerador) si y(denominador) = 1, o x/y si no lo es
    if @y == 1
      return "#{@x}"
    end
    "#{@x}/#{@y}"
  end
  
  def suma(other) # Método de suma
    x = @x*other.y + other.x*@y # (Numerador del 1º * Denominador del 2º) + (Numerador del 2º * Denominador del 1º)
    y = @y*other.y # Producto de Denominadores
    
    v = x/gcd(x,y) # Simplificacion de la x por gcd con y
    u = y/gcd(x,y) # Simplificacion de la y por gcd con x
    
    z = Fraccion.new(v,u) 
  end
  
   def resta(other) # Metodo de resta
    x = @x*other.y - other.x*@y# (Numerador del 1º * Denominador del 2º) - (Numerador del 2º * Denominador del 1º)
    y = @y*other.y # Producto de Denominadores
    
    v = x/gcd(x,y) # Simplificacion de la x por gcd con y
    u = y/gcd(x,y) # Simplificacion de la y por gcd con x
    
    z = Fraccion.new(v,u) 
  end
  
  def producto(other) # Método de multiplicacion
    x = @x*other.x # Producto de numeradores
    y = @y*other.y # Producto de denominadores
    
    v = x/gcd(x,y) # Simplificacion de la x por gcd con y
    u = y/gcd(x,y) # Simplificacion de la y por gcd con x 
    
   z = Fraccion.new(v,u)
  end
  
  def division(other) # Método de division (Nota: La definición de este método en el guión era similar al del producto. Se ha implementado la division)
    x = @x*other.y # Numerador del 1º * Denominador del 2º
    y = @y*other.x # Denominador del 1º * Numerador del 2º
  
    v = x/gcd(x,y) # Simplificacion de la x por gcd con y
    u = y/gcd(x,y) # Simplificacion de la y por gcd con x
    
   z = Fraccion.new(v,u)
  end
  
  def == (other) # Comparador de igualdad para las comparaciones del test. Dos fracciones serán iguales si tienen el mismo numerador y denominador
    if other.is_a? Numeric # Si recibe un numero, comprobara que el resultado de la fraccion es igual
      return @x/@y == other
    end
    @x == other.x && @y == other.y
  end
  
end
