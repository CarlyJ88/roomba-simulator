require 'roomba'

describe Roomba do
  it "knows it's location" do
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

end
