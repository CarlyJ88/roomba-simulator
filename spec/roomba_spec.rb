require 'roomba'

describe Roomba do
  it "knows it's location" do
    roomba = Roomba.new({:x => 0, :y => 0})
    expect(roomba.current_position).to eq ({:x => 0, :y => 0})
  end
end
