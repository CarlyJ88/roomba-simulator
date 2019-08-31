class Roomba
  def initialize(position)
    @position = position
  end

  def current_position
    @position
  end

  def move(directions)
    if directions == 'N'
      @position[:y] += 1
    elsif directions == 'E'
      @position[:x] += 1
    else
      @position[:y] -= 1
    end
    @position
  end

end
