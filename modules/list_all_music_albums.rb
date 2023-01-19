module ListAllMusicAlbums
  def list_all_music_albums
    stored_data = Storage.load_data('music_album')

    puts 'Sorry! there no albums to display. Create an album first!' if stored_data.empty? && @music_albums.empty?

    if @music_albums.length >= 1
      @music_albums.each do |album|
        puts "Album published date: #{album['publish_date']}. On spotify: #{album['on_spotify']}"
      end
    end

    return unless stored_data.length >= 1

    stored_data.map do |data|
      puts "Album published date: #{data['publish_date']}. On spotify: #{data['on_spotify']}"
    end
  end
end
