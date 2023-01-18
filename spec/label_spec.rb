require './label'
require './item'

describe 'Check for when an object of genre is created' do
  before :each do
    @new_label = Label.new('YBNL', 'red')
  end

  it 'should for object created' do
    expect(@new_label).to be_instance_of(Label)
  end

  it 'should for object name' do
    expect(@new_label.name).to eq('YBNL')
  end

  it 'should for object color' do
    expect(@new_label.color).to eq('red')
  end

  it 'items array should be empty' do
    expect(@new_label.items.length).to eq(0)
  end

  it 'object should add item to list using add_item method' do
    @item = Item.new(12)
    @new_label.add_item(@item)
    expect(@new_label.items.length).to eq(1)
  end
end
