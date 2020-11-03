#some things to make a game of mastermind
#Needs to have a method that creates random colors

class Mastermind
  attr_reader :code
  def initialize
    @usercode = []
    @code = []
  end
  def userCode
    @usercode = []
    puts "These are your options for the code: B, W, G, R, Y, O"
    puts "Enter for 1st slot"
    @usercode.push(gets[0].upcase)
    puts "Enter for 2nd slot"
    @usercode.push(gets[0].upcase)
    puts "Enter for 3rd slot"
    @usercode.push(gets[0].upcase)
    puts "Enter for 4th slot"
    @usercode.push(gets[0].upcase)
  end
  def computerCode
    for i in 1..4
      case rand(6) 
      when 0
        @code.push('B')
      when 1
        @code.push('W')
      when 2
        @code.push('G')
      when 3
        @code.push('R')
      when 4
        @code.push('Y')
      when 5
        @code.push('O')
      end
    end
  end
  def userComparison
    p @usercode
    results = []
    for i in 0..3
      if @code[i] == @usercode[i]
        results.push('1')
      #Need to fix this bottom part
      elsif @code.any? {|letter| letter==@usercode[i]}
        results.push('0')
      else
        results.push('-1')
      end
    end
    return results
  end
  def computerComparison
    p @code
    results = []
    for i in 0..3
      if @code[i] == @usercode[i]
        results.push('1')
      elsif @usercode.any? {|letter| letter==@code[i]}
        results.push('0')
      else
        results.push('-1')
      end
    end
    return results
  end
  def computerGuess
    possibilities = ['B', 'W', 'G', 'R', 'Y', 'O']
    @code.push('B')
    @code.push('B')
    @code.push('B')
    @code.push('B')
    var = 1
    for i in 0..12
      for j in 0..3
        if @code[j] != @usercode[j]
          @code[j] = possibilities[var]
        end
      end
      var +=1
      if @usercode == @code
        puts "Computer wins!!!"
        break
      end
    end
  end

  def explanation
    puts "Welcome to Mastermind"
    puts "The computer will randomly generate a code and you have 12 tries to  guess it"
    puts "Your results for each attempt means that a -1 is wrong, 0 is right color, wrong location and 1 is right color, right location"
    puts "The same element can be repeated"
    puts ""
  end


end

game = Mastermind.new
game.explanation
puts "hit '0' for the code master and anything else for guesser"
var = gets
if var.to_i==0
  puts "The computer will try and guess what your code is"
  game.userCode
  game.computerGuess
else
  game.computerCode
  for i in 1..12
    puts "Round: " + i.to_s
    game.userCode
    results = game.userComparison
    p results
    if results.all? {|element| element == '1'}
      puts "You guessed correctly the master code was: "
      p game.code
      break
    elsif i==12
      puts "Game Over. You Lose"
      puts "The master code was:"
      p game.code
      break
    end
  end
end
