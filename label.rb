class Label
  attr_accessor :name, :color, :id, :items

  def initialize(name, color)
    @id = Random(1..1000)
    @name = name
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.label = self unless item.label == self
  end
end
