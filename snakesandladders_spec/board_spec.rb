require('minitest/autorun')
require('minitest/rg')
require_relative('../ladder.rb')
require_relative('../snake.rb')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../board.rb')

class TestBoard < Minitest::Test

  def setup
    @snake1 = Snake.new(30, -8)
    @snake2 = Snake.new(45, -20)
    @snakes_array = [@snake1, @snake2]
    @ladder1 = Ladder.new(18, 50)
    @ladder2 = Ladder.new(56, 18)
    @ladders_array = [@ladder1, @ladder2]
    @player1 = Player.new("Player1", 12)
    @player2 = Player.new("Player2", 62)
    @players_array = [@player1, @player2]
    @dice = Dice.new
    @board = Board.new(@players_array, @snakes_array, @ladders_array)
  end

#  def test_if_player_lands_on_snake
#    @player1.move(3)   
#    @board.if_player_lands_on_snake(@player1)
#    assert_equal(7, @player1.show_position)
#  end

#  def test_if_player_lands_on_ladder
#    @player1.move(16)
#    @board.if_player_lands_on_ladder(@player1)
#    assert_equal(78,@player1.show_position)
#  end

  def test_entire_turn
#roll
#move
#check snake
#check ladder
#end
  @board.entire_turn(@player1,@dice)
  assert_equal(12,@player1.show_position)

  end

end
