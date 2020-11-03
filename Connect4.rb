class Grid
    attr_accessor :board
    def initialize
        @board = []
        for i in 0..5
            arr = []
            for j in 0..6
                arr.push(" ")
            end
            @board.push(arr)
        end
    end

    def display
        p @board[0]
        p @board[1]
        p @board[2]
        p @board[3]
        p @board[4]
        p @board[5]
    end

end

class Game 
    attr_reader :player1, :player2

    def initialize
        @player1 = "X"
        @player2 = "O"
    end

    def play_game
        grid = Grid.new
        for i in 0..20
            puts " "
            puts "Player 1"
            grid.display
            location = piece_placement(@player1, grid.board)
            if check(location, grid.board, "Q")
                puts " "
                grid.display
                puts "Player 1 wins"
                break
            end

            
            puts " "
            puts "Player 2"
            grid.display
            location = piece_placement(@player2, grid.board)
            if check(location, grid.board, "Q")
                puts " "
                grid.display
                puts "Player 2 wins"
                break
            end
            
            if i == 20
                puts " "
                puts "Game over. It is a tie"
            end
        end
    end

    def piece_placement(piece, board)
        puts "Which column would you like to place your piece"
        column = gets.to_i
        while column > 6 || column < 0
            puts "Please try again"
            column = gets.to_i
        end
        bottom = 5
        while board[bottom][column] != " "
            bottom -= 1
            if bottom == -1
                puts "You just wasted your turn dummy!"
                break
            end
        end
        if board != -1
            board[bottom][column] = piece
            return [bottom, column]
        end
    end

    #So after the piece is placed it uses that location to find if there is a 4 in a row
    def check(location, board, piece)
        if(row_check(location, board, piece) || column_check(location, board, piece) || diagonal_checkR(location, board, piece) || diagonal_checkL(location, board, piece))
            return true
        else
            return false
        end
    end

    def row_check(location, board, piece)
        row = board[location[0]]
        counter = 0
        row.each do |var|
            if var == piece
                counter+=1
            else
                counter = 0
            end
            if counter == 4
                return true
            end
        end
        return false
    end

    def column_check(location, board, piece)
        column = []
        counter = 0
        column.push(board[0][location[1]])
        column.push(board[1][location[1]])
        column.push(board[2][location[1]])
        column.push(board[3][location[1]])
        column.push(board[4][location[1]])
        column.push(board[5][location[1]])

        column.each do |var| 
            if var == piece
                counter +=1
            else
                counter =0
            end
            if counter == 4
                return true
            end
        end
        return false
    end 
    def diagonal_checkR(location, board, piece)
        diagonal = []
        counter = 0
        row = location[0]
        column = location[1]
        diagonal.push(board[row][column])
        loop do
            row -= 1
            column += 1
            if row < 0 || column >= 7
                break 
            end
            diagonal.push(board[row][column])
        end
        diagonal = diagonal.reverse
        row =  location[0]
        column = location[1]
        loop do
            row += 1
            column -= 1
            if row >= 6 || column <0
                break
            end
            diagonal.push(board[row][column])
        end
        diagonal.each do |var|
            if var == piece
                counter += 1
            else
                counter = 0
            end
            if counter == 4
                puts "diagonal r"
                return true
            end
        end
        return false
    end
    def diagonal_checkL(location, board, piece)
        diagonal = []
        counter = 0
        row = location[0]
        column = location[1]
        diagonal.push(board[row][column])
        loop do
            row += 1
            column += 1
            if row >= 6 || column >= 7
                break 
            end
            diagonal.push(board[row][column])
        end
        diagonal = diagonal.reverse
        row =  location[0]
        column = location[1]
        loop do
            row -= 1
            column -= 1
            if row <   0|| column < 0
                break
            end
            diagonal.push(board[row][column])
        end
        diagonal.each do |var|
            if var == piece
                counter += 1
            else
                counter = 0
            end
            if counter == 4
                return true
            end
        end
        return false
    end
end

game = Game.new
grid = Grid.new


game.play_game
#Needs a method that runs the game
#Needs proper methods to display the game