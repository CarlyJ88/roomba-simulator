require 'roomba'

describe Roomba do

  room = Room.new({:x => 5, :y => 5})

  describe 'Roomba directions' do

    it "Knows it's location" do
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      expect(roomba.current_position).to eq ({:x => 0, :y => 0})
    end

    it "moves North by 1 move" do
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      expect(roomba.move('N')).to eq ({:x => 0, :y => 1})
    end

    it "moves East by 1 move" do
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      expect(roomba.move('E')).to eq ({:x => 1, :y => 0})
    end

    it "moves South by 1 move" do
      roomba = Roomba.new({:x => 1, :y => 1}, room)
      expect(roomba.move('S')).to eq ({:x => 1, :y => 0})
    end

    it "moves West by 1 move" do
      roomba = Roomba.new({:x => 1, :y => 1}, room)
      expect(roomba.move('W')).to eq ({:x => 0, :y => 1})
    end
  end

  describe 'Roomba invalid moves' do

    it "Roomba cannot move South if next to the wall" do
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      expect(roomba.move('S')).to eq ({:x => 0, :y => 0})
    end

    it "Roomba cannot move West if next to the wall" do
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      expect(roomba.move('W')).to eq ({:x => 0, :y => 0})
    end

    it "Roomba cannot move North if next to the wall" do
      roomba = Roomba.new({:x => 5, :y => 5}, room)
      expect(roomba.move('N')).to eq ({:x => 5, :y => 5})
    end

    it "Roomba cannot move East if next to the wall" do
      roomba = Roomba.new({:x => 5, :y => 5}, room)
      expect(roomba.move('E')).to eq ({:x => 5, :y => 5})
    end
  end

  describe 'Collected dirt' do
    it 'Cleans one patch of available dirt' do
      room = Room.new({:x => 5, :y => 5})
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      room.add_dirt({:x => 0, :y => 1})
      roomba.move('N')
      expect(roomba.collected_dirt).to eq 1
    end

    it 'Cleans two patches of available dirt' do
      room = Room.new({:x => 5, :y => 5})
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      room.add_dirt({:x => 0, :y => 1})
      room.add_dirt({:x => 1, :y => 1})
      roomba.move('N')
      roomba.move('E')
      expect(roomba.collected_dirt).to eq 2
    end

    it 'Cleans one patch of available dirt that it meets even if two are available' do
      room = Room.new({:x => 5, :y => 5})
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      room.add_dirt({:x => 0, :y => 1})
      room.add_dirt({:x => 1, :y => 1})
      roomba.move('N')
      roomba.move('S')
      expect(roomba.collected_dirt).to eq 1
    end

    it 'Cleans two patches of available dirt' do
      room = Room.new({:x => 5, :y => 5})
      roomba = Roomba.new({:x => 0, :y => 0}, room)
      room.add_dirt({:x => 0, :y => 1})
      room.add_dirt({:x => 1, :y => 1})
      roomba.move('N')
      roomba.move('S')
      roomba.move('N')
      expect(roomba.collected_dirt).to eq 1
    end
  end
end
