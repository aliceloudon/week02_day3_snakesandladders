require('minitest/autorun')
require('minitest/rg')
require_relative('../snake.rb')
require_relative('../player.rb')

class TestSnake < Minitest::Test

  def setup()
    @snake1 = Snake.new(74,-73)
    @player1 = Player.new("player1",74)
  end

  def test_move_player_down
    @snake1.move_player_down(@player1)
    assert_equal(1, @player1.show_position)
  end
end