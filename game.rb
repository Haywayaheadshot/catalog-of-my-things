class MusicAlbum
    def initialize (multi_player, last_played_at)
        @multi_player = multi_player
        @last_played_at = last_played_at
    end

    def can_be_archived?
        super && @last_played_at > 2
    end
end
