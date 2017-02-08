require('minitest/autorun')
require('minitest/rg')
require_relative('../ladder.rb')
require_relative('../snake.rb')
require_relative('../player.rb')
require_relative('../dice.rb')

class TestBoard < Minitest::Test

  def setup
    @snake1 = Snake.new(15, 8)
    @snake2 = Snake.new(45, 20)
    snakes_array = [@snake1, @snake2]
    @ladder1 = Ladder.new(28, 50)
    @ladder2 = Ladder.new(56, 18)
    ladders_array = [@ladder1, @ladder2]
    @player1 = Player.new("Player1", 17)
    @player2 = Player.new("Player2", 62)
    @players_array = [@player1, @player2]
    @dice = Dice.new
    @board = Board.new(players_array, snakes_array, ladders_array)
  end

  def test_if_player_lands_on_snake
    @player1.move(-2)   
    @board.if_player_lands_on_snake(player1)
    assert_equal()
  end

end
