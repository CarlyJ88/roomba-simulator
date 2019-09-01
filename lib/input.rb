class Input
  
  def read_file
    File.readlines("input.txt")
  end

  def get_room_dimensions
    array = read_file[0].chomp.split
    array2 = array.map(&:to_i)
    [ [:x,array2[0]],[:y,array2[1]] ].to_h
  end
end