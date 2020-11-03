# frozen_string_literal: true
class Cipher

  def cipher(word, shift)
    alphabet = { 1 => 'a', 2 => 'b', 3 => 'c', 4 => 'd', 5 => 'e', 6 => 'f', 7 => 'g', 8 => 'h', 9 => 'i', 10 => 'j', 11 => 'k', 12 => 'l', 13 => 'm', 14 => 'n', 15 => 'o', 16 => 'p', 17 => 'q', 18 => 'r', 19 => 's', 20 => 't', 21 => 'u', 22 => 'v', 23 => 'w', 24 => 'x', 25 => 'y', 26 => 'z' }
    arr = word.split('')
    arr.map! do |letter|
      if letter == ' ' || letter == ',' || letter == '!'
        # Nothing needs to happen
        letter = letter
      else
        index = alphabet.key(letter.downcase) + shift
        index -= 26 if index > 26
        letter = if letter == letter.upcase
                  alphabet[index].upcase
                else
                  alphabet[index]
                end
      end
    end
    return arr.join
  end
end

var = Cipher.new
puts var.cipher("z",1)