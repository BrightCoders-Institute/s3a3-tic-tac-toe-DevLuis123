class Players
    attr_accessor :player_1, :player_2, :integer

    def initialize
        @player_1 = 'X'
        @player_2 = 'O'
        @integer = nil
        @array_control = []
    end

    def mv_player1
    input = gets.chomp.strip.to_i
    @integer = input if (1..9).cover?(input) && @array_control.none? { |num| num == input }
    @array_control << @integer if @integer
    end

    def mv_player2
        input = gets.chomp.strip.to_i
        @integer = input if (1..9).cover?(input) && @array_control.none? { |num| num == input }
        @array_control << @integer if @integer
    end
end