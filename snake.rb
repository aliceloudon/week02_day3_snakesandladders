class Snake

  def initialize(head_of_snake, length)
    @head_of_snake = head_of_snake
    @length = length
  end

  def move_player_down(player)
    player.move(@length)
  end


end