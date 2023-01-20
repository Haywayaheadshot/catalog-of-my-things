module CreateMusicAlbum
  def create_music_album
    puts 'Please input published date'
    publish_date = gets.chomp
    puts 'Is it on spotify?(Please input whether true or false)'
    on_spotify = gets.chomp
    music_album = MusicAlbum.new(publish_date)
    @music_albums.push({ 'publish_date' => music_album.publish_date, 'on_spotify' => on_spotify })
    puts 'Music album succesfully created!'
  end
end
