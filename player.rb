class Player

  def initialize(name,position)
    @name = name
    @position = position
  end

  def show_position
    return @position
  end

  def move(number)
    @position += number
  end

  def roll_dice(dice)
    dice.roll
  end

  def move_using_dice(dice)
    @position += dice.roll
  end

end