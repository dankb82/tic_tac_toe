require 'minitest/autorun'
require 'minitest/pride'
require './tic_tac_toe.rb'

class TicTacToeTest < Minitest::Test

  def test_board_class_exists
    assert Board
  end

  def test_display_empty_board
    grid = Board.new
    assert_output(empty_board) do
      board.display
    end
  end
end
