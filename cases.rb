require './app'

class Cases < App
  puts '--------------------------------------------------'
  puts 'Welcome to my library! ͡° ͜ʖ ͡°'

  def initialize()
    @app = App.new
    super()
  end

  def on_start
    puts @app.on_start
    input = gets.chomp.to_i
    show_menu(input)
  end

  def show_menu(par)
    @user_pick = {
      1 => 'list_all_books',
      2 => 'list_all_authors',
      3 => 'create_an_author',
      4 => 'create_a_book',
      5 => 'create_a_label',
      6 => 'list_all_labels',
      7 => 'create_a_game',
      8 => 'list_all_games',
      9 => 'create_music_album',
      10 => 'list_all_music_albums',
      11 => 'create_a_genre',
      12 => 'list_all_genres',
      13 => 'exit_app'
    }

    case par
    when 1..12
      @app.send(@user_pick[par])
      on_start
    when 13
      @app.send(@user_pick[par])
    else
      puts 'Option doesn\'t exist ¯\_(ﾟ～ﾟ)_/¯, select another one!'
      on_start
    end
  end
end
