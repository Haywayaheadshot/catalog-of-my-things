class Genre
  attr_accessor :name, :items, :id

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.genre(self) unless item.genre == self
  end
end
