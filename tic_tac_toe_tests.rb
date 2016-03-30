require 'minitest/autorun'
require 'minitest/pride'
require './tic_tac_toe.rb'

class TicTacToeTest < Minitest::Test

  def test_board_class_exists
    assert Board
  end

  def test_human_player_class_exists
    assert HumanPlayer
  end

  def test_human_player_can_have_name
    assert_equal "Dan", HumanPlayer.new("Dan").name
  end

end
