module ListAllGenres
  def list_all_genres
    puts 'Sorry! there are no genres to display. Create a genre first!' if @genre_arr.empty?

    return unless @genre_arr.length >= 1

    @genre_arr.each do |genre|
      puts (genre['name']).to_s
    end
  end
end
