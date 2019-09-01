class Input

  ROOM_DIMENSIONS = 0
  ROOMBA_LOCATION = 1
  PATCHES_OF_DIRT = 2..-2
  DRIVING_INSTRUCTIONS = -1

  def initialize
    @lines = []
  end
  
  def read_file
    @lines = File.readlines("input.txt")
  end

  def get_room_dimensions
    room = @lines[ROOM_DIMENSIONS]
    convert_string_to_hash(room)
  end

  def get_roomba_location
    roomba = @lines[ROOMBA_LOCATION]
    convert_string_to_hash(roomba)
  end

  def get_patches_of_dirt
    dirt = @lines[PATCHES_OF_DIRT].map do |item|
      convert_string_to_hash(item)
    end
  end

  def get_driving_instructions
    @lines[DRIVING_INSTRUCTIONS].split('')
  end

  private

  def convert_string_to_hash(string)
    array = string.chomp.split.map(&:to_i)
    { :x => array[0], :y => array[1]}
  end
end