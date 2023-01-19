module ListAllGenres
  def list_all_genres
    stored_data = Storage.load_data('genre')

    puts 'Sorry! there are no genres to display. Create a genre first!' if @genre_arr.empty? && stored_data.empty?

    if @genre_arr.length >= 1
      @genre_arr.each do |genre|
        puts (genre['name']).to_s
      end
    end

    return unless stored_data.length >= 1

    stored_data.map do |data|
      puts (data['name']).to_s
    end
  end
end
