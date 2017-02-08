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

end