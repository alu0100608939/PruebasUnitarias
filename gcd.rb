def gcd(u, v)
  u, v = u.abs, v.abs
  
  while v != 0 # while v == 0 ERROR, LAS DIVISIONES SE HARAN POR EL RESTO SIEMPRE QUE SEA DISTINTO DE 0
    u, v = v, u % v
  end
  u
end

puts gcd(6,3)
