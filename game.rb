require_relative 'players'
class GameLogic
  def initialize
    @board = {
      7 => "*", 8 => "*", 9 => "*",
      4 => "*", 5 => "*", 6 => "*",
      1 => "*", 2 => "*", 3 => "*"
    }
    @players = Players.new
  end

  def play_game
    puts "Tablero, posiciones: \n1 2 3 \n4 5 6 \n7 8 9 \n"
    show_board

    while true
      mv_player1
      break if game_over?

      mv_player2
      break if game_over?
    end

    display_winner
  end

  private

  def show_board
    @board.values.each_slice(3) do |row|
      puts row.join(' ')
    end
  end

  def mv_player1
    puts 'Turno del jugador 1. Ingrese una posición (1-9):'
    @players.mv_player1
    update_board(@players.integer, @players.player_1)
    show_board
  end

  def mv_player2
    puts 'Turno del jugador 2. Ingrese una posición (1-9):'
    @players.mv_player2
    update_board(@players.integer, @players.player_2)
    show_board
  end

  def update_board(posicion, jugador)
    @board[posicion] = jugador
  end

  def game_over?
    winner = check_winner
    return true if winner || @board.values.none? { |cell| cell == '*' }

    false
  end

  def check_winner
    winning_combinations = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                            [1, 4, 7], [2, 5, 8], [3, 6, 9],
                            [1, 5, 9], [3, 5, 7]]

    winning_combinations.each do |combo|
      if @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]] && @board[combo[0]] != '*'
        return @board[combo[0]]
      end
    end

    nil
  end

  def display_winner
    winner = check_winner
    if winner
      puts "¡#{winner} es el ganador!"
    else
      puts 'El juego ha terminado en empate.'
    end
  end
end

Juego1 = GameLogic.new
Juego1.play_game