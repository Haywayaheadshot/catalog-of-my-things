require './item'

class Genre
  attr_accessor :name, :items

  def initialize(name, _items)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end
end
