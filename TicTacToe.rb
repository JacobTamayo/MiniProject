# frozen_string_literal: true

# A class that is for just for displaying the information from the background
class Grid
  attr_reader :container
  def initialize
    @container = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
  end

  def display
    p @container[0]
    p @container[1]
    p @container[2]
  end

  def move(arr, player)
    @container[arr[0].to_i][arr[1].to_i] = player
  end

  def explanation
    puts "This is a guide to play this game of Tic-Tac-Toe"
    puts "Note: Anthing that isn't a number will default to 0"
    puts ""
    puts "Column:  0    1    2"
    puts "Row: 0 [' ', ' ', ' ']"
    puts "Row: 1 [' ', ' ', ' ']"
    puts "Row: 2 [' ', ' ', ' ']"
  end
end

class Game
  attr_reader :player1, :player2
  def initialize
    @player1 = 'X'
    @player2 = 'O'
  end

  def player1Input
    puts 'Player 1'
    puts 'please enter the row you woud like to choose'
    row = gets.to_i
    loop do
      if row == 0 || row == 1 || row ==2
        break
      end
      puts "Please enter a valid number"
      row = gets.to_i
    end
    puts 'Then enter the column'
    column = gets.to_i
    loop do
      if column == 0 || column == 1 || column ==2
        break
      end
      puts "Please enter a valid number"
      column = gets.to_i
    end
    [row, column]
  end

  def player2Input
    puts 'Player 2 please enter the row you woud like to choose'
    row = gets.to_i
    loop do
      if row == 0 || row == 1 || row ==2
        break
      end
      puts "Please enter a valid number"
      row = gets
    end
    puts 'Then enter the column'
    column = gets.to_i
    loop do
      if column == 0 || column == 1 || column ==2
        break
      end
      puts "Please enter a valid number"
      column = gets.to_i
    end
    [row, column]
  end

  def check(container)
    rows = container
    columns = [[container[0][0], container[1][0], container[2][0]], [container[0][1], container[1][1],container[2],[1]], [container[0][2], container[1],[2], container[2],[2]]]
    diagonals = [[container[0][0], container[1][1], container[2][2]], [container[2][0], container[1][1], container[2][0]]]
    rows.each do |arr|
      if arr.all? {|var| var == 'X' }
        return [true, 'X']
      elsif arr.all? {|var| var == 'O' }
        return [true, 'O']
      end
    end
    columns.each do |arr|
      if arr.all?{ |var| var == 'X'}
        return [true, 'X']
      elsif arr.all? {|var| var == 'O' }
        return [true, 'O']
      end
    end
    diagonals.each do |arr|
      if arr.all? {|var| var == 'X' }
        return [true, 'X']
      elsif arr.all? {|var| var == 'O' }
        return [true, 'O']
      end
    end
    [false , "??"]
  end

  def play_game
    grid = Grid.new
    grid.explanation
    i = 0
    loop do
      grid.move(player1Input, @player1)
      grid.display
      i += 1
      var = check(grid.container)
      if (var[0])
        puts 'the winner is: ' + var[1]
        break
      end
      if i == 9
        puts 'the game is a draw'
        break
      end
      grid.move(player2Input, player2)
      grid.display
      i += 1
      var = check(grid.container)
      if (var[0])
        puts 'the winner is: ' + var[1]
        break
      end
    end
  end
  
end

game = Game.new
game.play_game