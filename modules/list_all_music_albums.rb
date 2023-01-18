module ListAllMusicAlbums
  def list_all_music_albums
    if @music_albums.length >= 1
      @music_albums.each do |album|
        puts "Album published date: #{album['publish_date']}. On spotify: #{album['on_spotify']}"
      end
    else
      puts 'Sorry! there no albums to display. Create an album first!'
    end
  end
end
