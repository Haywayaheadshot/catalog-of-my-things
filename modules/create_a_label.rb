module CreateALabel
  def create_a_label
    puts 'Please input label name'
    name = gets.chomp
    puts 'Please input label color'
    color = gets.chomp
    label = Label.new(name, color)
    @labels_arr.push({ 'name' => label.name, 'color' => label.color })
    puts 'Label succesfully created!'
  end
end
