module ListAllBooks
  def list_all_books
    stored_data = Storage.load_data('book')

    puts 'Sorry! there no books to display. Create a book first!' if @books_arr.empty? && stored_data.empty?

    if @books_arr.length >= 1
      @books_arr.each do |book|
        puts "Book publisher is #{book['publisher']}.
        Published on #{book['publish_date']} and its cover is in a #{book['cover_state']} state!"
      end
    end

    return unless stored_data.length >= 1

    stored_data.each do |data|
      puts "Book publisher is #{data['publisher']}.
      Published on #{data['publish_date']} and its cover is in a #{data['cover_state']} state!"
    end
  end
end
