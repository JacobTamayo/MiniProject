require './Connect4'

describe Game do
    describe "#check" do
        it "Checks if row search works correctly" do
            game = Game.new
            grid = Grid.new
            grid.board[0] = ["X", "X", "X", "X", " ", " ", " "]
            expect(game.row_check([0,0], grid.board, "X")).to eql(true)
        end
        it "Checks if row search works correctly pt.2" do
            game = Game.new
            grid = Grid.new
            grid.board[0] = ["X", "X", "X", " ", " ", " ", " "]
            expect(game.row_check([0,0], grid.board, "X")).to eql(false)
        end
        it "Has to be 4 in a row" do
            game = Game.new
            grid = Grid.new
            grid.board[0] = ["X", "X", "X", " ", "X", " ", " "]
            expect(game.row_check([0,0], grid.board, "X")).to eql(false)
        end
        xit "Checks if the column works" do
            grid = Grid.new
            game = Game.new
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            expect(game.column_check([0,0], grid.board, "X")).to eql(true)
        end
        xit "Checks if the column works" do
            grid = Grid.new
            game = Game.new
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            expect(game.column_check([0,0], grid.board, "X")).to eql(false)
        end

        it "Checks if diagonal check for right side works" do
            grid = Grid.new
            game = Game.new
            grid.board = [["X", " ", " ", " ", " ", " ", " "],
                          ["X", " ", "X", " ", " ", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "],
                          ["X", "X", "X", " ", "X", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "]]
            expect(game.diagonal_checkR([5,0], grid.board, "X")).to eql(false)
        end
        it "Checks if diagonal check for right side works pt.2" do
            grid = Grid.new
            game = Game.new
            grid.board = [["X", " ", " ", " ", " ", " ", " "],
                          ["X", " ", "X", " ", " ", " ", " "],
                          ["X", "X", "X", "X", " ", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "],
                          ["X", "X", "X", " ", "X", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "]]
            expect(game.diagonal_checkR([5,0], grid.board, "X")).to eql(true)
        end

        it "Checks if diagonal check for left side works" do
            grid = Grid.new
            game = Game.new
            grid.board = [["X", " ", " ", " ", " ", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "],
                          ["X", "X", "X", " ", "X", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "]]
            expect(game.diagonal_checkR([0,0], grid.board, "X")).to eql(false)
        end
        it "Checks if diagonal check for left side works pt.2" do
            grid = Grid.new
            game = Game.new
            grid.board = [["X", " ", " ", " ", " ", " ", " "],
                          ["X", " ", "X", " ", " ", " ", " "],
                          ["X", "X", "X", "X", " ", " ", " "],
                          ["X", "X", "X", " ", " ", " ", " "],
                          ["X", "X", "X", " ", "X", " ", " "],
                          ["X", "X", "X", "X", " ", " ", " "]]
            expect(game.diagonal_checkL([2,0], grid.board, "X")).to eql(true)
        end
    end
end

describe Grid do
    describe "#proper display" do
        it "Checks if the pieces are properly displayed" do
            grid = Grid.new
            grid.piece_placement(0, "X")
            expect(grid.board[5][0]).to eql("X")
        end
        it "Works with 'O' " do
            grid = Grid.new
            grid.piece_placement(0, "O")
            expect(grid.board[5][0]).to eql("O")
        end
        it "Checks if the pieces can be put one higher" do
            grid = Grid.new
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            expect(grid.board[4][0]).to eql("X")
        end
        it "Checks if it filters toward the top" do
            grid = Grid.new
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            grid.piece_placement(0, "X")
            expect(grid.board[0][0]).to eql("X")
        end
    end
end