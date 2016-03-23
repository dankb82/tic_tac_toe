class Board

  def display_board
    square = 0
    display_line
    ("A".."C").each do |b|
      puts  " | #{square += 1} | #{square += 1} | #{square += 1} |"
    end
    display_line
  end

  private def display_line
    puts " -------------"
  end
end
