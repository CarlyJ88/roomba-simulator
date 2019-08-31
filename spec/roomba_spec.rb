require 'roomba'

describe Roomba do
  describe 'Roomba directions' do
    it "Knows it's location" do
      roomba = Roomba.new({:x => 0, :y => 0})
      expect(roomba.current_position).to eq ({:x => 0, :y => 0})
    end

    it "moves North by 1 move" do
      roomba = Roomba.new({:x => 0, :y => 0})
      expect(roomba.move('N')).to eq ({:x => 0, :y => 1})
    end

    it "moves East by 1 move" do
      roomba = Roomba.new({:x => 0, :y => 0})
      expect(roomba.move('E')).to eq ({:x => 1, :y => 0})
    end

    it "moves South by 1 move" do
      roomba = Roomba.new({:x => 1, :y => 1})
      expect(roomba.move('S')).to eq ({:x => 1, :y => 0})
    end

    it "moves West by 1 move" do
      roomba = Roomba.new({:x => 1, :y => 1})
      expect(roomba.move('W')).to eq ({:x => 0, :y => 1})
    end
end

describe 'Roomba invalid moves' do

  it "Roomba cannot move South if next to the wall" do
    roomba = Roomba.new({:x => 0, :y => 0})
    expect(roomba.move('S')).to eq ({:x => 0, :y => 0})
  end

  it "Roomba cannot move West if next to the wall" do
    roomba = Roomba.new({:x => 0, :y => 0})
    expect(roomba.move('W')).to eq ({:x => 0, :y => 0})
  end

  it "Roomba cannot move North if next to the wall" do
    roomba = Roomba.new({:x => 5, :y => 5})
    expect(roomba.move('N')).to eq ({:x => 5, :y => 5})
  end

  it "Roomba cannot move East if next to the wall" do
    roomba = Roomba.new({:x => 5, :y => 5})
    expect(roomba.move('E')).to eq ({:x => 5, :y => 5})
  end
end
end
