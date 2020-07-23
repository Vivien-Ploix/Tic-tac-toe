require

class Board
  attr_accessor :cells, :board_row_a, :board_row_b, :board_row_c

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

    @board_row_a = [@a1.written_symbol,"|", @a2.written_symbol, "|", @a3.written_symbol]
    @board_row_b = [@b1.written_symbol,"|", @b2.written_symbol, "|", @b3.written_symbol]
    @board_row_c = [@c1.written_symbol,"|", @c2.written_symbol, "|", @c3.written_symbol]

    @cells = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]

    positions_available = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
  
  end 

  def draw_board

    
    puts ""
    puts " "*6 + "1" + " "*6 + "2" + " "*6 + "3"
    puts ""
    print "a    "
    print @board_row_a.join('   ')
    puts ""
    puts "    " +"-"*20
    print "b    "
    print @board_row_b.join('   ')
    puts ""
    puts "    " +"-"*20
    print "c    "
    print @board_row_c.join('   ')
    puts ""
  end 

  
  def player1_move (play)

    @cells.each do |cell|
      if cell.position == play
        cell.written_symbol = @players[0].symbol
      end 
    end 

  end 

  def player1_move (play)

    @cells.each do |cell|
      if cell.position == play
        cell.written_symbol = @players[1].symbol
      end 
    end 

  end 

  def is_there_a_victory?
    if @a1.written_symbol=@a2.written_symbol=@a3.written_symbol = O || @a1.written_symbol=@a2.written_symbol=@a3.written_symbol = X
      return true
    elsif @b1.written_symbol=@b2.written_symbol=@b3.written_symbol = O || @b1.written_symbol=@b2.written_symbol=@b3.written_symbol = X
      return true 
    elsif @c1.written_symbol=@c2.written_symbol=@c3.written_symbol = O || @c1.written_symbol=@c2.written_symbol=@c3.written_symbol = X
      return true 
    elsif @a1.written_symbol=@b1.written_symbol=@c1.written_symbol = O || @a1.written_symbol=@b1.written_symbol=@c1.written_symbol = X
      return true 
    elsif @a2.written_symbol=@b2.written_symbol=@c2.written_symbol = O || @a2.written_symbol=@b2.written_symbol=@c2.written_symbol = X
      return true
    elsif @a3.written_symbol=@b3.written_symbol=@c3.written_symbol = O || @a3.written_symbol=@b3.written_symbol=@c3.written_symbol = X
      return true 
    elsif @a1.written_symbol=@b2.written_symbol=@c3.written_symbol = O || @a1.written_symbol=@b2.written_symbol=@c3.written_symbol = X
      return true 
    elsif @c1.written_symbol=@b2.written_symbol=@a3.written_symbol = O || @c1.written_symbol=@b2.written_symbol=@a3.written_symbol = X
      return true
    else return false
    end 
  end

  def perform
    puts draw_board
  end 


end 

