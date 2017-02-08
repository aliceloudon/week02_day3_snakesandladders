class Board

  def initialize(players, snakes, ladders)
    @players = players
    @snakes = snakes
    @ladders = ladders
  end

  def if_player_lands_on_snake(player)
    for snake in @snakes
      if player.show_position == snake.show_head
        snake.move_player_down(player)
      end
    end
  end

  def if_player_lands_on_ladder(player)
    for ladder in @ladders
      if player.show_position == ladder.show_bottom_of_ladder
        ladder.move_player_up(player)
      end
    end
  end

end
