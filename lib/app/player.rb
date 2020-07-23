


class Player 

  def initialize (name, symbol)
    @name = name
    @symbol = symbol
  end 


  def move

    puts "Où voulez-vous jouer?"
    print "> "
    return play = gets.chomp

  end 


end 