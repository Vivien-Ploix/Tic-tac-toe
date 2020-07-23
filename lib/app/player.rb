


class Player 
  attr_accessor :name, :symbol

  def initialize (name, symbol)
    @name = name
    @symbol = symbol
  end 


  def move

    puts "Où voulez-vous jouer?"
    print "> "
    return gets.chomp

  end 


end 