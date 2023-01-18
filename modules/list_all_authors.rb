module ListAllAuthors
  def list_all_authors
    if @authors_arr.length >= 1
      @authors_arr.map do |author|
        puts "The authors first name is #{author['first_name']} and last name is #{author['last_name']}"
      end
    else
      puts 'Sorry! there no authors to display. Create an author first!'
    end
  end
end
