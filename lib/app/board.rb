

class Board
  attr_accessor :cells

  def initialize


    @a1 = BoardCase.new("a1", " ")
    @a2 = BoardCase.new("a2", " ")
    @a3 = BoardCase.new("a3", " ")
    @b1 = BoardCase.new("b1", " ")
    @b2 = BoardCase.new("b2", " ")
    @b3 = BoardCase.new("b3", " ")
    @c1 = BoardCase.new("c1", " ")
    @c2 = BoardCase.new("c2", " ")
    @c3 = BoardCase.new("c3", " ")

    @cells = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]

    @positions_available = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
  
  end 

  def draw_board

    
    puts ""
    puts " "*4 + "1" + " "*4 + "2" + " "*4 + "3"
    puts ""
    print "a   #{@a1.written_symbol} |  #{@a2.written_symbol}  |  #{@a3.written_symbol}"
    print 
    puts ""
    puts "   " +"-"*14
    print "b   #{@b1.written_symbol} |  #{@b2.written_symbol}  |  #{@b3.written_symbol}"
    puts ""
    puts "   " +"-"*14
    print "c   #{@c1.written_symbol} |  #{@c2.written_symbol}  |  #{@c3.written_symbol}"
    puts ""
    puts ""
  end 



  def player_move(player)
    puts "#{player.name}, c'est à toi de jouer, choisis ton placement :"
    @symbol = player.symbol
    choice = gets.chomp


    while @positions_available.include?(choice) == false
      puts "Cette position n'est pas valable, choisis-en une autre :"
      choice = gets.chomp
    end

    @positions_available.delete(choice)

    @cells.each do |cell|
      if cell.position == choice
        cell.written_symbol = @symbol
      end
    end
  end 

  def any_position_available?
    if @positions_available != []
      return true
    else 
      return false
    end 
  end 


  def is_there_a_victory?
    if @a1.written_symbol == "O" && @a2.written_symbol == "O" && @a3.written_symbol == "O" || @a1.written_symbol == "X" && @a2.written_symbol == "X" && @a3.written_symbol == "X"
      return true
    elsif @b1.written_symbol == "O" && @b2.written_symbol == "O" && @b3.written_symbol == "O" || @b1.written_symbol == "X" && @b2.written_symbol == "X" && @b3.written_symbol == "X"
      return true
    elsif @c1.written_symbol == "O" && @c2.written_symbol == "O" && @c3.written_symbol == "O" || @c1.written_symbol == "X" && @c2.written_symbol == "X" && @c3.written_symbol == "X"
      return true
    elsif @a1.written_symbol == "O" && @b1.written_symbol == "O" && @c1.written_symbol == "O" || @a1.written_symbol == "X" && @b1.written_symbol == "X" && @c1.written_symbol == "X"
      return true 
    elsif @a2.written_symbol == "O" && @b2.written_symbol == "O" && @c2.written_symbol =="O" || @a2.written_symbol == "X" && @b2.written_symbol == "X" && @c2.written_symbol =="X"
      return true
    elsif @a3.written_symbol == "O" && @b3.written_symbol == "O" && @c3.written_symbol == "O" || @a3.written_symbol == "X" && @b3.written_symbol == "X" && @c3.written_symbol == "X"
      return true 
    elsif @a1.written_symbol == "O" && @b2.written_symbol == "O" && @c3.written_symbol == "O" || @a1.written_symbol == "X" && @b2.written_symbol == "X" && @c3.written_symbol == "X"
      return true
    elsif @c1.written_symbol == "O" && @b2.written_symbol == "O" && @a3.written_symbol == "O" || @c1.written_symbol == "X" && @b2.written_symbol == "X" && @a3.written_symbol == "X"
      return true
    else return false
    end 
  end

  def perform
    puts draw_board
  end 


end 

