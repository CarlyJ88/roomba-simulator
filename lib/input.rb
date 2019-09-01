class Input
  
  def read_file
    File.readlines("input.txt")
  end

  def get_room_dimensions
    array = read_file[0].chomp.split.map(&:to_i)
    [ [:x,array[0]],[:y,array[1]] ].to_h
  end

  def get_roomba_location
    array = read_file[1].chomp.split.map(&:to_i)
    [ [:x,array[0]],[:y,array[1]] ].to_h
  end

  def get_patches_of_dirt
    read_file[2..-2].map do |item|
      array = item.chomp.split.map(&:to_i)
      [ [:x,array[0]],[:y,array[1]] ].to_h
    end
  end
end