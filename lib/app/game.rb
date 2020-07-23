

class Game

  def initialize

    @board1 = Board.new


  end 


  def players_creation 

    puts "Bonjour, bienvenue dans cette nouvelle partie de Tic-tac-toe"
    puts "Veuillez inscrire le nom du joueur 1"
    print "> "
    name_1 = gets.chomp
    puts "Du joueur 2 ?"
    print "> "
    name_2 = gets.chomp

    @player_1 = Player.new(name_1, "X")
    @player_2 = Player.new(name_2, "O")

    puts ""
    #puts "#{@player_1.name} commence :"

  end 

  def player_move (play)

    @@board.each do |cell|
      if cell.position == play
        cell.written_symbol = @player.symbol
      end 
    end 

  end 

  def perform

    players_creation
    @board1.draw_board
    play = @player_1.move
    player_move(play)
    draw_board
  end 

end 

