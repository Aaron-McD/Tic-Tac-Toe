require './Tic_Tac_Toe.rb'

my_board = TicTacToe::GameBoard.new

puts my_board

my_board.get_item(1,1).sym = 'y'

puts my_board