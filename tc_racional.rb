# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

  def test_suma
    assert_equal(10,Fraccion.new(5,2).suma(Fraccion.new(15,2)))
  end
  
  
end
