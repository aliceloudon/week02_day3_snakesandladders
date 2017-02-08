require('minitest/autorun')
require('minitest/rg')
require_relative('../ladder.rb')
require_relative('../player.rb')

class TestLadder < Minitest::Test

  def setup()
    @ladder1 = Ladder.new(33,60)
    @player1 = Player.new("sharon",33)
  end

  def test_move_player_up
    @ladder1.move_player_up(@player1)
    assert_equal(93, @player1.show_position)
  end

end