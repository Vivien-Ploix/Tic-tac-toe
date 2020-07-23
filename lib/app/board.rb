

class Board

  def initialize

    @@board = Array.new
    

    @@board << @a1 = BoardCase.new("a1", " ")
    @@board << @a2 = BoardCase.new("a2", " ")
    @@board << @a3 = BoardCase.new("a3", " ")
    @@board << @b1 = BoardCase.new("b1", " ")
    @@board << @b2 = BoardCase.new("b2", " ")
    @@board << @b3 = BoardCase.new("b3", " ")
    @@board << @c1 = BoardCase.new("c1", " ")
    @@board << @c2 = BoardCase.new("c2", " ")
    @@board << @c3 = BoardCase.new("c3", " ")

    @board_row_a = [@a1.written_symbol,"|", @a2.written_symbol, "|", @a3.written_symbol]
    @board_row_b = [@b1.written_symbol,"|", @b2.written_symbol, "|", @b3.written_symbol]
    @board_row_c = [@c1.written_symbol,"|", @c2.written_symbol, "|", @c3.written_symbol]

    #@@board = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  
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



  def perform
    puts draw_board
  end 


end 

