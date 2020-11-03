# frozen_string_literal: true

# Given a dictionary and suppose to extract words that are in the dictionary

def substrings(main_word, dictionary)
  container = {}
  new_dictionary = dictionary.each do |word|
    next if main_word.match(word).nil?

    temporary_word = main_word
    container[word] = 1
    temporary_word = temporary_word.sub(word, '0')
    loop do
      break if temporary_word.match(word).nil?

      container[word] = container[word] + 1
      temporary_word = temporary_word.sub(word, '0')
    end
  end
  puts container
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
