def collatz_series(n)
  series = [n]
  while n != 1
    if n.even?
      n /= 2
    else
      n = (3 * n) + 1
    end
    series << n
  end
  series
end

def longest_collatz_sequence_below(limit)
  longest_length = 0
  number_with_longest_sequence = 0

  (1..limit).each do |num|
    sequence_length = collatz_series(num).size
    if sequence_length > longest_length
      longest_length = sequence_length
      number_with_longest_sequence = num
    end
  end

  [number_with_longest_sequence, longest_length]
end

print "Ingresa un número para generar la serie de Collatz: "
numero = gets.chomp.to_i
print "Ingresa el límite superior para hallar el número con la cadena más larga hasta llegar al 1: "
limit = gets.chomp.to_i - 2

serie_collatz = collatz_series(numero)
puts "La serie de Collatz para el número #{numero} es:"
puts serie_collatz.join(" → ")

numero_mayor, longitud_mayor = longest_collatz_sequence_below(limit)
puts "El número menor a #{limit + 2} que tiene una cadena más larga hasta llegar al 1 es #{numero_mayor} con una longitud de #{longitud_mayor} elementos."
