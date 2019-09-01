require_relative './room'

class Roomba

  MIN_DIMENSION = 0 

  def initialize(position, room)
    @position = position
    @room = room
    @collected_dirt = 0
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
      @position[:y] -= 1 if @position[:y] > MIN_DIMENSION
    else
      @position[:x] -= 1 if @position[:y] > MIN_DIMENSION
    end
    @room.available_dirt.each do |dirt|
      @collected_dirt += 1 if @position == dirt
      @room.available_dirt.delete(dirt) if @position == dirt
    end
    @position
  end

  def collected_dirt
    @collected_dirt
  end
end
