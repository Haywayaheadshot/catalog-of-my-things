require './genre'

describe 'Check for when an object of genre is created' do
  before :each do
    @new_genre = Genre.new('Pop')
  end

  it 'should for object created' do
    expect(@new_genre).to be_instance_of(Genre)
  end

  it 'should for object name' do
    expect(@new_genre.name).to eq('Pop')
  end

  it 'items array should be empty' do
    expect(@new_genre.items.length).to eq(0)
  end
end
