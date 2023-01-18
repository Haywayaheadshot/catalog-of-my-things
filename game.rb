require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super()
  end

  def can_be_archived?
    super && (@last_played_at > 2)
  end
end
