class Item
    attr_accessor :genre, :author, :source, :label, :publish_date, :archived

    def initialize()
        @id = Random.rand(1..1000)
    end

    def can_be_archived?
        @publish_date > 20
    end

    def move_to_archive?
        @archived = true if can_be_archived?
    end
end