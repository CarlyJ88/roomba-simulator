require 'roomba'

class Room

  def initialize(dimensions)
    @dimensions = dimensions
    @available_dirt = []
  end

  def dimensions
    @dimensions
  end

  def add_dirt(dirt)
    @available_dirt.push(dirt)
  end

  attr_reader :available_dirt
  
end

