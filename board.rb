class Board
    attr_reader :size, :board
    def initialize(size)
        @size = size
        @board = Array.new(size, Array.new(size, nil))
    end

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
            self.board[y][x] = value
            return true
        rescue IndexError => e
            puts "That is out of bounds"
            return false
        end
    end

    def to_s
        string_out = ""
        @board.each do |array|
            array.each do |index|
                string_out += " | "
                string_out += index == nil ? " " : index.to_s
            end
            string_out += " | \n"
        end
        return string_out
    end
end