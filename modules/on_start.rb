module OnStart
  def on_start
    puts '--------------------------------------------------'
    puts 'Select an option: '
    puts '1 - List all books'
    puts '2 - List all authors'
    puts '3 - Create an author'
    puts '4 - Create a book'
    puts '5 - Create a label'
    puts '6 - List all labels'
    puts '7 - Create a game'
    puts '8 - List all games'
    puts '9 - Create a music album'
    puts '10 - List all music albums'
    puts '11 - Create a genre'
    puts '12 - List all genres'
    puts '13 - Exit'
    puts '--------------------------------------------------'
  end

  def load_stored_data
    stored_books = Storage.load_data('book')
    stored_authors = Storage.load_data('author')
    stored_games = Storage.load_data('game')
    stored_genres = Storage.load_data('genre')
    stored_labels = Storage.load_data('label')
    stored_music = Storage.load_data('music_album')

    stored_books.each do |data|
      @books_arr.push(data)
    end

    stored_authors.each do |data|
      @authors_arr.push(data)
    end

    stored_games.each do |data|
      @games_arr.push(data)
    end

    stored_genres.each do |data|
      @genre_arr.push(data)
    end

    stored_labels.each do |data|
      @labels_arr.push(data)
    end

    stored_music.each do |data|
      @music_albums.push(data)
    end
  end
end
