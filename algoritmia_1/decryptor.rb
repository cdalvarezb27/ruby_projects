def desencriptar_mensaje(encrypted_message, defase)

  dictionary = {0 => " ", 1 => "a", 2 => "b", 3 => "c", 4 => "d", 5 => "e", 6 => "f", 7 => "g", 8 => "h", 9 => "i", 10 => "j", 11 => "k",
                12 => "l", 13 => "m", 14 => "n", 15 => "o", 16 => "p", 17 => "q", 18 => "r", 19 => "s", 20 => "t", 21 => "u", 22 => "v",
                23 => "w", 24 => "x", 25 => "y", 26 => "z"}

  array_letras = encrypted_message.chars
  values = []
  desencrypted = []

  # Guarda las keys en values
  array_letras.each do |letra|
    values << dictionary.key(letra)
  end

  # Suma el desfase elegido
  values.each do |i|
    desencrypted << (i + defase) % 27
  end

  # Asocia cada valor desencriptado con su letra correspondiente
  desencrypted.each do |valor|
    letra = dictionary[valor]
    print letra
  end

end

# usar función para desencriptar
desencriptar_mensaje("rvtufkmbrdpr fmasmegppreemvemeuaiv tmgb", 14)
