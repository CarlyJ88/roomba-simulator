require_relative './room'
require_relative './roomba'
require_relative './input'

def controller
  input = Input.new
  input.read_file
  dimensions = input.room_dimensions
  room = Room.new(dimensions)
  input.patches_of_dirt.each do |dirt|
    room.add_dirt(dirt)
  end
  position = input.roomba_location
  roomba = Roomba.new(position, room)
  input.driving_instructions.each do |direction|
    roomba.move(direction)
  end
  puts "#{roomba.current_position[:x]} #{roomba.current_position[:y]}"
  puts roomba.collected_dirt
end

controller
