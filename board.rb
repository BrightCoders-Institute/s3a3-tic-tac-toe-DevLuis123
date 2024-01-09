class Borad
    def initialize
        
    end
end

board = {
    1 => "*", 2 => "*", 3 => "*",
    4 => "*", 5 => "*", 6 => "*",
    7 => "*", 8 => "*", 9 => "*"
}

while true

puts "Ingrese posicion player 1:"
input = gets.chomp
integer = Integer(input)
player_1 = "X"

board[integer] = player_1

board.values.each_slice(3) do |row|
    puts row.join(" ")
end

    puts "Ingrese posicion player 2:"
    input = gets.chomp
    integer = Integer(input)
    player_2 = "O"
    
board[integer] = player_2
    
    board.values.each_slice(3) do |row|
        puts row.join(" ")
    end
    
end
