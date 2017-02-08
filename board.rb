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
    return
  end

  def if_player_lands_on_ladder(player)
    for ladder in @ladders
      if player.show_position == ladder.show_bottom_of_ladder
        ladder.move_player_up(player)
      end
    end
    return
  end

  def entire_turn(player,dice)
    number = player.roll_dice(dice)
    player.move(number)
    if_player_lands_on_snake(player)
    if_player_lands_on_ladder(player)
  end

  def finish_game
    for player in @players
      if player.show_position >= 100
        return "#{player} wins"
      end
    end
    return nil
  end

  def entire_game(dice)
    until finish_game != nil #(got help with this)
      for player in @players
         entire_turn(player, dice)
      end
      return "game over"
    end
  end

end
