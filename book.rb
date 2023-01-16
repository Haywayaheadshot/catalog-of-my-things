class Book
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, archived: false)
    @publisher = publisher
    @cover_state = cover_state
    @archived = archived
  end

  def can_be_archived?
    ((@archived == true) || (@cover_state == 'bad'))
  end
end
