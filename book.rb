require './item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, archived: false)
    @publisher = publisher
    @cover_state = cover_state
    @archived = archived
    super()
  end

  def can_be_archived?
    super || (@cover_state == 'bad')
  end
end
