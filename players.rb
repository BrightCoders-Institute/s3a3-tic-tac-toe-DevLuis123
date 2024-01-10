
class Players
    attr_accessor :player_1, :player_2, :integer
    def initialize
        @player_1 = " "
        @player_2 = " "
        @integer = nil
        @array_control = []
    end

    def mv_player1
        puts "Ingrese una posicion player 1:"
        input = gets.chomp.strip
        @integer = Integer(input)
        @player_1 = "X"
    end

    def mv_player2
        puts "Ingrese posicion player 2:"
        input = gets.chomp.strip
        @integer = Integer(input)
        @player_2 = "O"
    end

    def valid_num
        @array_control << @integer
        if @array_control.none? {|num| num == @integer}
            
        end
    end
end
