require('minitest/autorun')
require('minitest/rg')
require_relative('../dice.rb')
require_relative('../player.rb')

class TestPlayer < Minitest::Test 
  def setup
    @player1 = Player.new("player1",1)
    @dice = Dice.new
  end

  def test_show_position
    assert_equal(1,@player1.show_position)
  end


end