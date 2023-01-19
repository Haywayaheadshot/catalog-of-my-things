module ListAllLabels
  def list_all_labels
    stored_data = Storage.load_data('label')

    puts 'Sorry! there no labels to display. Create a label first!' if stored_data.empty? && @labels_arr.empty?

    if @labels_arr.length >= 1
      @labels_arr.each do |label|
        puts "Label name: #{label['name']}. Label color: #{label['color']}"
      end
    end

    return unless stored_data.length >= 1

    stored_data.map do |data|
      puts "Label name: #{data['name']}. Label color: #{data['color']}"
    end
  end
end
