module ListAllBooks
  def list_all_books
    puts 'Sorry! there no books to display. Create a book first!' if @books_arr.empty?

    return unless @books_arr.length >= 1

    @books_arr.each do |book|
      puts "Book publisher is #{book['publisher']}.
        Published on #{book['publish_date']} and its cover is in a #{book['cover_state']} state!"
    end
  end
end
