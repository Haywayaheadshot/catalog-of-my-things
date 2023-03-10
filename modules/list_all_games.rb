module ListAllGames
  def list_all_games
    puts 'Sorry! there no games to display. Create a game first!' if @games_arr.empty?

    return unless @games_arr.length >= 1

    @games_arr.each do |game|
      puts "Game published on #{game['publish_date']}. Mulitplayer #{game['multiplayer']}
              and was last played at #{game['last_played_at']}"
    end
  end
end
