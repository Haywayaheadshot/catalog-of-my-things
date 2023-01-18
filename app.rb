require './book'
require './author'
require './label'
require './game'
require './music_album'
require './genre'
require './modules/on_start'
require './modules/list_all_books'
require './modules/exit_app'
require './modules/create_a_book'
require './modules/create_an_author'
require './modules/list_all_authors'
require './modules/create_a_label'
require './modules/list_all_labels'
require './modules/create_a_game'
require './modules/list_all_games'
require './modules/create_music_album'
require './modules/list_all_music_albums'
require './modules/create_a_genre'
require './modules/list_all_genres'


class App
  attr_accessor :books_arr, :authors_arr, :labels_arr, :games_arr, :music_albums, :genre_arr

  def initialize()
    @books_arr = []
    @authors_arr = []
    @labels_arr = []
    @games_arr = []
    @music_albums = []
    @genre_arr = []
  end

  include OnStart
  include ListAllBooks
  include CreateABook
  include CreateAnAuthor
  include ListAllAuthors
  include CreateALabel
  include ListAllLabels
  include CreateAGame
  include ListAllGames
  include CreateMusicAlbum
  include ListAllMusicAlbums
  include CreateAGenre
  include ListAllGenres
  include ExitApp
end
