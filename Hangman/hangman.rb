
def findWord(contents)
    loop do
        word = contents[rand(contents.length)]
        if word.length >= 5 && word.length < 12
            return word.chomp
        end
    end
end
def display(displayword, lives)
    puts "Lives: #{lives}"
    puts "Word: #{displayword}"
end
def userInput(alphabet)
    loop do
        puts " "
        p alphabet
        puts "Please enter a letter"
        char = gets.chomp.downcase
        if alphabet.any? {|letter| letter == char}
            
            return char
        end
        puts "Please try again"
    end
end
def correctLetter(displayword, word,  character)
    while word.any? { |letter| letter == character}
        displayword[word.index(character)] = character
        word[word.index(character)] = '-'
    end
    return displayword
end
def changeWord(word, character)
    for i in 0...word.length
        if word[i] == character
            word[i] = '-'
        end
    end
    return word
end


contents = File.readlines "5desk.txt"
word = findWord(contents).downcase.split("")
displayword = Array.new(word.length, '_')
lives = Array.new(6, 'O')
alphabet = ('a'..'z').to_a
while lives.include? ('O')
    display(displayword, lives)

    puts "Would you like to 'save', 'load' a save or continue"
    answer = gets.chomp
    if answer == 'save'
        save = File.open("save.txt", "w")
        save.print displayword
        save.puts " "
        save.print word
        save.puts " "
        save.print lives
        save.close
    elsif answer == 'load'
         
            save = File.open("save.txt", "r")
            arr = []
            while !save.eof?
                arr.push(save.readline.chomp)
            end
            displayword = arr[0].chomp
            word = arr[1].chomp
            lives = arr[2].chomp
            p arr[0]
            p arr[1]
            p arr[2]
        
    end    


    character = userInput(alphabet)
    alphabet.delete(character)
    if word.any? { |char| char == character}
        displayword = correctLetter(displayword, word, character)
        word = changeWord(word, character)
    else
        lives.pop
    end
    if !displayword.include?('_')
        puts " "
        puts "You Win!!"
        break
    elsif lives.empty?
        puts " "
        puts "You Lose."
        break
    end
end