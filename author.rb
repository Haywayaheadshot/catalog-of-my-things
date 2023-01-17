class Author
  attr_accessor :id, :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @id = Random.rand(1..1000)
    @first_name = first_name
    @last_name = last_name
  end

  def add_item(item)
    @items.push(item)
    item.author = self unless item.author == self
  end
end
