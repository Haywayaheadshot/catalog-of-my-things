module ListAllLabels
  def list_all_labels
    if @labels_arr.length >= 1
      @labels_arr.each do |label|
        puts "Label name: #{label['name']}. Label color: #{label['color']}"
      end
    else
      puts 'Sorry! there no labels to display. Create a label first!'
    end
  end
end
