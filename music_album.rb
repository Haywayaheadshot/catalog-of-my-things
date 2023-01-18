require './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify: false)
    @on_spotify = on_spotify
    super()
  end

  def can_be_archived?
    super && @on_spotify
  end
end
