
require 'pry'
class Game

  attr_accessor :board
  def initialize


    @board = Board.new


  end 


  def players_creation 

    puts ""
    puts ""
    puts "Bonjour, bienvenue dans cette nouvelle partie de Tic-tac-toe !"
    puts ""
    puts "Veuillez inscrire le nom du joueur 1 qui commencera"
    print "> "
    name_1 = gets.chomp
    puts ""
    puts "Du joueur 2 ?"
    print "> "
    name_2 = gets.chomp
    puts ""

    @player1 = Player.new(name_1, "X")
    @player2 = Player.new(name_2, "O")

    puts "Le joueur 1 s'appelle #{@player1.name} et a comme symbole #{@player1.symbol}"
    puts "Le joueur 2 s'appelle #{@player2.name} et a comme symbole #{@player2.symbol}"

    puts ""
    puts "#{@player1.name} commence :"

  end 

  def play_again

    puts "Voulez-vous faire une autre partie? Si c'est le cas, tape oui"
    print "> "
    answer = gets.chomp
    if answer == "oui"
      return true
    else return false
    end 
  end 

  def perform

    players_creation
    @board.draw_board

    until @board.is_there_a_victory? 
      @board.player_move(@player1)
      @board.draw_board
      if @board.any_position_available? == false
        break
      elsif @board.is_there_a_victory? == false 
       @board.player_move(@player2)
       @board.draw_board
       if @board.is_there_a_victory? == true
        puts "Bravo #{@player2.name}, tu t'es montré plus malin que #{@player1.name} et a gagné ! "
       end 
      else 
        puts "Bravo #{@player1.name}, tu t'es montré plus malin que #{@player2.name} et a gagné ! "
        break
      end
    end

    if @board.is_there_a_victory? == false
      puts "Egalité, réessayez ! "
    end 


  end 

end 

