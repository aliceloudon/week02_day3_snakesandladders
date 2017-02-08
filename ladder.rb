class Ladder

  def initialize(bottom_of_ladder, length)
    @bottom_of_ladder = bottom_of_ladder
    @length = length
  end

  def move_player_up(player)
    player.move(@length)
  end

  def show_bottom_of_ladder
    return @bottom_of_ladder
  end
end