require './board.rb'
require './human_player.rb'

@board = Board.new
@board.print_directions
@board.print_board
while @board.not_full?
  @board.move(gets.chomp)
  @board.print_board
end
