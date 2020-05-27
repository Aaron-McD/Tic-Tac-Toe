require './board.rb'

module TicTacToe
    class GameBoard < Board
        def initialize
            super(3)
            fillBoard
        end

        private

        def fillBoard
            for i in 0...3
                for j in 0...3
                    self.set_item(i, j, BoardPiece.new)
                end
            end
        end
    end

    class BoardPiece
        attr_accessor :sym
        def initialize(sym = nil)
            @sym = sym
        end

        def to_s
            if self.sym == nil
                return " "
            else
                return self.sym
            end
        end
    end
end