require 'room'

describe Room do
  it 'has a small room' do
    room = Room.new({ :x => 5, :y => 5 })
    expect(room.dimensions).to eq ({ :x => 5, :y => 5 })
  end

end
