require_relative 'players'
class Board < Players
    def initialize(board)
    @board = board
    end
    def board_Game
        
        show_board
        
        while true

            mv_player1
            @board[@integer] = @player_1
            show_board

            mv_player2
            @board[@integer] = @player_2
            show_board
                
        end
    end
    def show_board
        @board.values.each_slice(3) do |row|
            puts row.join(" ")
        end
    end

end
board = {
    1 => "*", 2 => "*", 3 => "*",
    4 => "*", 5 => "*", 6 => "*",
    7 => "*", 8 => "*", 9 => "*"
}

Juego1 = Board.new(board)
Juego1.board_Game