module ListAllAuthors
  def list_all_authors
    stored_data = Storage.load_data('author')

    puts 'Sorry! there no authors to display. Create an author first!' if @authors_arr.empty? && stored_data.empty?

    if @authors_arr.length >= 1
      @authors_arr.map do |author|
        puts "The authors first name is #{author['first_name']} and last name is #{author['last_name']}"
      end
    end

    return unless stored_data.length >= 1

    stored_data.each do |data|
      puts "The authors first name is #{data['first_name']} and last name is #{data['last_name']}"
    end
  end
end
