class Board

  def display_board
    square = 0
    display_line
    ("A".."C").each do |b|
      puts  " | #{square += 1} | #{square += 1} | #{square += 1} |"
      display_line
    end
  end

  private def display_line
    puts " +---+---+---+"
  end
end
