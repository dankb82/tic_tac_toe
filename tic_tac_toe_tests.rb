require 'minitest/autorun'
require 'minitest/pride'
require './tic_tac_toe.rb'
require './moves.rb'

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

  def test_human_player_has_default_name
    assert_equal "Player One", HumanPlayer.new.name
  end

  def test_moves_class_exists
    assert Moves
  end

end
