module CreateAGenre
  def create_a_genre
    puts 'Please input genre'
    name = gets.chomp
    genre = Genre.new(name)
    @genre_arr.push({ 'name' => genre.name })
    puts 'Genre succesfully created!'
  end
end
