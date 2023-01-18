module CreateAnAuthor
  def create_an_author
    puts 'Please input Authors first name'
    first_name = gets.chomp
    puts 'Please input Authors last name'
    last_name = gets.chomp
    author = Author.new(first_name, last_name)
    @authors_arr.push({ 'first_name' => author.first_name, 'last_name' => author.last_name })
    puts 'Author succesfully created!'
  end
end
