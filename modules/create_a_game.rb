module CreateAGame
  def create_a_game
    puts 'Please input published date'
    publish_date = gets.chomp
    puts 'Please input multiplayer'
    multiplayer = gets.chomp
    puts 'Please input where it was last played at'
    last_played_at = gets.chomp
    game = Game.new(publish_date, multiplayer, last_played_at)
    @games_arr.push({ 'publish_date' => game.publish_date, 'multiplayer' => game.multiplayer,
                      'last_played_at' => game.last_played_at })
    puts 'Game successfully created!'
  end
end
