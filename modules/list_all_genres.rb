module ListAllGenres
  def list_all_genres
    if @genre_arr.length >= 1
      @genre_arr.each do |genre|
        puts (genre['name']).to_s
      end
    else
      puts 'Sorry! there are no genres to display. Create a genre first!'
    end
  end
end
