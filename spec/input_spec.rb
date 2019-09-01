require 'input'

describe Input do
  describe 'read the file' do
    it 'Converts the file into array of strings' do
      input = Input.new
      expect(input.read_file).to eq ["5 5\n", "1 2\n", "1 0\n", "2 2\n", "2 3\n", "NNESEESWNWW"]
    end

    it 'Gets the room dimensions' do
      input = Input.new
      input.read_file
      expect(input.get_room_dimensions).to eq ({:x => 5, :y => 5})
    end

    it 'Gets the roomba location' do
      input = Input.new
      input.read_file
      expect(input.get_roomba_location).to eq ({:x => 1, :y => 2})
    end

    it 'Gets the location of dirt patches' do
      input = Input.new
      input.read_file
      expect(input.get_patches_of_dirt).to eq ([{:x => 1, :y => 0}, {:x => 2, :y => 2}, {:x => 2, :y => 3}])
    end

    it 'Gets the driving instructions' do
      input = Input.new
      input.read_file
      expect(input.get_driving_instructions).to eq (['N', 'N', 'E', 'S', 'E', 'E', 'S', 'W', 'N', 'W', 'W'])
    end
  end
end