module ListAllGames
  def list_all_games
    stored_data = Storage.load_data('game')

    puts 'Sorry! there no games to display. Create a game first!' if @games_arr.empty? && stored_data.empty?

    if @games_arr.length >= 1
      @games_arr.each do |game|
        puts "Game published on #{game['publish_date']}. Mulitplayer #{game['multiplayer']}
              and was last played at #{game['last_played_at']}"
      end
    end

    return unless stored_data.length >= 1

    stored_data.each do |data|
      puts "Game published on #{data['publish_date']}. Mulitplayer #{data['multiplayer']}
              and was last played at #{data['last_played_at']}"
    end
  end
end
