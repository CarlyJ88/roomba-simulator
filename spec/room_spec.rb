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

  it 'has two patches of dirt' do
    room = Room.new({ :x => 5, :y => 5 })
    room.add_dirt({:x => 1, :y => 3})
    expect(room.add_dirt({:x => 3, :y => 4})).to eq ([{:x => 1, :y => 3}, {:x => 3, :y => 4}])
  end
end
