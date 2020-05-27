class Board
    attr_reader :size, :board
    def initialize(size)
        @size = size
        @board = []
        construct_board
    end

    # For the board getters and setters the x and y position start from the to left corner with 0, 0 being the top left corner and
    # size - 1, size - 1 being the bottom right corner
    
    def get_item(x, y)
        begin
            return self.board[y][x]
        rescue IndexError => e
            puts "That is out of bounds"
            return false
        end
    end

    def set_item(x, y, value)
        begin
            @board[y][x] = value
            return true
        rescue IndexError => e
            puts "That is out of bounds"
            return false
        end
    end

    def to_s
        string_out = ""
        self.board.each do |array|
            array.each do |index|
                string_out += " | "
                string_out += index == nil ? " " : index.to_s
            end
            string_out += " | \n\n"
        end
        return string_out
    end

    private 

    def construct_board
        self.size.times do
            self.board.push(Array.new(self.size, nil))
        end
    end
end