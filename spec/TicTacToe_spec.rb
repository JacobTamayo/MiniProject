# require "./TicTacToe"

# describe Game do
#     describe "#check" do
#         it "checks if horizontal outputs correctly" do
#             arr = [['X','X', 'X'], [' ', ' ', ' '], [' ', ' ', ' ']]
#             game = Game.new
#             results = game.check(arr)
#             expect(results[0]).to eql(true)
#         end
#         it "check if horizontal outputs correctly pt.2" do
#             arr = [['X','X', 'O'], [' ', ' ', ' '], [' ', ' ', ' ']]
#             game = Game.new
#             results = game.check(arr)
#             expect(results[0]).to eql(false)
#         end
#         it "checks if vertical outputs correctly" do
#             arr = [['X',' ', ' '], ['X', ' ', ' '], ['X', ' ', ' ']]
#             game = Game.new
#             results = game.check(arr)
#             expect(results[0]).to eql(true)
#         end
#         it "checks if vertical outputs correctly pt.2" do
#             arr = [['X',' ', ' '], ['X', ' ', ' '], ['O', ' ', ' ']]
#             game = Game.new
#             results = game.check(arr)
#             expect(results[0]).to eql(false)
#         end
#         it "checks if diagonal ouputs correctly" do
#             arr = [['X',' ', ' '], [' ', 'X', ' '], [' ', ' ', 'X']]
#             game = Game.new
#             results = game.check(arr)
#             expect(results[0]).to eql(true)
#         end
#         it "checks if diagonal outputs correctly pt.2" do
#             arr = [['X',' ', ' '], ['', 'X', ' '], ['', ' ', 'O']]
#             game = Game.new
#             results = game.check(arr)
#             expect(results[0]).to eql(false)
#         end
#         it "Why??" do
#             arr = [['X',' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
#             game = Game.new
#             results = game.check(arr)
#             expect(results[0]).to eql(false)
#         end
#     end
# end