def caesar_cipher(string, shift_factor)
  lowercase_alphabet = ("a".."z").to_a

  uppercase_alphabet = ("A".."Z").to_a

  split_string = string.split("")
  
  split_string.each do |char|
    if (!lowercase_alphabet.include? char) && (!uppercase_alphabet.include? char)
      next
    elsif char == char.upcase
      alphabet_char_index = uppercase_alphabet.find_index(char)
      split_string_char_index = split_string.find_index(char)
      split_string[split_string_char_index] = uppercase_alphabet[alphabet_char_index - shift_factor]
    else
    alphabet_char_index= lowercase_alphabet.find_index(char)
    split_string_char_index= split_string.find_index(char)
    split_string[split_string_char_index] = lowercase_alphabet[alphabet_char_index - shift_factor]
  end
end
  puts split_string.join("")
end

print "Enter Your Words: "
words = gets.chomp

print "Enter Shift Number: "
num = gets.chomp.to_i

caesar_cipher(words, num)