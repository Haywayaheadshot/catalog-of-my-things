module ListAllMusicAlbums
  def list_all_music_albums
    puts 'Sorry! there no albums to display. Create an album first!' if @music_albums.empty?

    return unless @music_albums.length >= 1

    @music_albums.each do |album|
      puts "Album published date: #{album['publish_date']}. On spotify: #{album['on_spotify']}"
    end
  end
end
