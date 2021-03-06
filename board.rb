class Board
  VALID_MOVES = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

  def initialize
    @board = [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]
  end

  def print_directions
    puts ""
    puts "Pick your move."
    puts ""
    puts "a1 | a2| a3"
    puts "___________"
    puts "b1 | b2| b3"
    puts "___________"
    puts "c1 | c2| c3"
         print "\n"
  end

  def print_board
    (0..2).each do |r|
      print " "
      (0..2).each do |c|
        print @board[r][c]
        print " | " unless c == 2
      end
      print "\n"
      print " ---------\n" unless r == 2
    end
    print "\n"
  end

  def move(m)
    m = m.upcase
    unless VALID_MOVES.include?(m)
      puts "You stink"
      return
    end
    col = x(m)
    row = y(m)
    if @board[col][row] == " "
      @board[col][row] = "X"
    else
      puts "NO WAY JERK."
    end
  end

  def not_full?
    flat_board = @board.flatten
    flat_board.include?(" ")
  end

  private def x(coordinate)
    coordinate[1].to_i - 1
  end

  private def y(coordinate)
    coordinate[0].ord - 'A'.ord
  end

end
