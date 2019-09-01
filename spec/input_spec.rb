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
  end
end