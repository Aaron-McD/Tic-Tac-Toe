require './board.rb'

my_board = Board.new(3)

my_board.set_item(1,1,'x')
p my_board.board
puts my_board