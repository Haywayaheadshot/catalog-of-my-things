require './modules/storage'

module ExitApp
  def exit_app
    puts 'Thank you for checking out my catalogue!'
    Storage.save_data('book', @books_arr)
    Storage.save_data('author', @authors_arr)
    Storage.save_data('label', @labels_arr)
    Storage.save_data('game', @games_arr)
    Storage.save_data('music_album', @music_albums)
    Storage.save_data('genre', @genre_arr)
  end
end
