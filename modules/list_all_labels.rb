module ListAllLabels
  def list_all_labels
    puts 'Sorry! there no labels to display. Create a label first!' if @labels_arr.empty?

    return unless @labels_arr.length >= 1

    @labels_arr.each do |label|
      puts "Label name: #{label['name']}. Label color: #{label['color']}"
    end
  end
end
