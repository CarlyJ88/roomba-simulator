require 'room'

class Roomba
  def initialize(position, room)
    @position = position
    @room = room
  end

  def current_position
    @position
  end

  def move(directions)
    if directions == 'N'
      @position[:y] += 1 if @position[:y] < @room.dimensions[:y]
    elsif directions == 'E'
      @position[:x] += 1 if @position[:y] < @room.dimensions[:x]
    elsif directions == 'S'
      @position[:y] -= 1 if @position[:y] > 0
    else
      @position[:x] -= 1 if @position[:y] > 0
    end
    @position
  end
end
