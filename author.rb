class Author
    attr_accessor :publisher, :cover_state

    def initialize(publisher, cover_state, archived: false)
        @publisher = publisher
        @cover_state = cover_state
        @archived = archived
    end

    def can_be_archived?
        return ((@archived == true) || (@cover_state == 'bad')) ? true : false
    end
end