class Roomba
  def initialize(position)
    @position = position
  end

  def current_position
    @position
  end

  def move(directions)
    @position[:y] += 1
    @position
  end

end
