
require 'pry'
class Game

  attr_accessor :board, :players
  def initialize


    @board = Board.new
    @players = Array.new


  end 


  def players_creation 

    puts "Bonjour, bienvenue dans cette nouvelle partie de Tic-tac-toe"
    puts "Veuillez inscrire le nom du joueur 1"
    print "> "
    name_1 = gets.chomp
    puts "Du joueur 2 ?"
    print "> "
    name_2 = gets.chomp

    @players << Player.new(name_1, "X")
    @players << Player.new(name_2, "O")

    puts "Le joueur 1 s'appelle #{@players[0].name} et a comme symbole #{@players[0].symbol}"
    puts "Le joueur 2 s'appelle #{@players[1].name} et a comme symbole #{@players[1].symbol}"

    puts ""
    puts "#{@players[0].name} commence :"

  end 


  def perform

    players_creation
    @board.draw_board
    play = @players[0].move
    @board.player1_move(play)
    draw_board
  end 

end 

