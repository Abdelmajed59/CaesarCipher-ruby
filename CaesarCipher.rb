puts "enter a text to be ciphered"
text = gets.chomp
puts "enter the number of pace"
shifting_num = gets.chomp.to_i

def ciphering(text, shift)
  new_text = []
  shift = shift %26

  text.codepoints.map.with_index do |value, index|
  
    if value > 64 && value < 91
      value += shift
      value -= 26 if value > 90

    elsif value > 96 && value - shift < 123
      value += shift
      value -= 26 if value > 122  
    end

    new_text.push(value.chr)
  end  
  return new_text
end

result = ciphering(text, shifting_num)
p result.join("")