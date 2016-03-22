require 'minitest/autorun'
require 'minitest/pride'
require './tic_tac_toe.rb'

class TicTacToeTest < Minitest::Test

  def test_grid_class_exists
    assert Grid
  end

  def test_display_empty_grid
    grid = Grid.new
    assert_output(empty_grid) do
      grid.display
    end
  end
end
