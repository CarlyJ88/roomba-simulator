require 'room'

describe Room do
  it 'has a small room' do
    room = Room.new({ :x => 5, :y => 5 })
    expect(room.dimensions).to eq ({ :x => 5, :y => 5 })
  end

  it 'has a patch of dirt' do
    room = Room.new({ :x => 5, :y => 5 })
    expect(room.add_dirt({:x => 1, :y => 3})).to eq ([{:x => 1, :y => 3}])
  end
end
