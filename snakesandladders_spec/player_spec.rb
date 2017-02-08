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

  # def test_move
  #   assert_equal(6, @player1.move(5))
  # end

  # def test_move_with_dice
  #   dice_roll = @dice.roll
  #   @player1.move(dice_roll)
  #     if @player1.show_position > 15 
  #       position_check = true
  #     end
  #     assert_nil(position_check)
  # end

  def test_move_using_dice
      @player1.move_using_dice(@dice)
      assert_equal(1, @player1.show_position)    
  end


# def test_move_using_dice_



end