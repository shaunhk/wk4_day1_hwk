require 'minitest/autorun'
require 'minitest/rg'
require_relative('../models/game.rb')

class GameTest < MiniTest::Test

  def setup
    @arg_1 = "rock"
    @arg_2 = "scissors"
    @arg_3 = "paper"
    @game1 = Game.new(@arg_1, @arg_2)
    @game2 = Game.new(@arg_1, @arg_3)
    @game3 = Game.new(@arg_1, @arg_1)
  end

  def test_player1_wins
    assert_equal("player1 wins!", @game1.play)
  end

  def test_player1_loses
    assert_equal("player2 wins!", @game2.play)
  end

  def test_draw
    assert_equal("draw", @game3.play)
  end

end
