module CreateABook
  def create_a_book
    puts 'Please input publishers name'
    publisher = gets.chomp
    puts 'Please input published date'
    publish_date = gets.chomp
    puts 'Please input the state of the cover (Good or Bad)'
    cover_state = gets.chomp
    book = Book.new(publish_date, publisher, cover_state)
    @books_arr.push({ 'publisher' => book.publisher, 'publish_date' => book.publish_date,
                      'cover_state' => book.cover_state })
    puts 'Book successfully created!'
  end
end
