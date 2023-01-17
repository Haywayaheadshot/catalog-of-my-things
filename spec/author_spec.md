require_relative './../author'

describe Author do
  before :each do
    @author = Author.new('Stanley', 'Nnamani')
  end

  context 'Test object creation' do
    it 'Confirm that constructor create instance of author object' do
      expect(@author).to be_instance_of(Author)
    end

    it 'throw an error when number of parameter is less than required' do
      -> { Author.new('Stanley') }.should raise_error ArgumentError
    end

    it 'object should throw an error when no parameter is given' do
      -> { Author.new('') }.should raise_error ArgumentError
    end
  end

  context 'Test methods and attributes' do
    it 'object should have first_name attribute' do
      expect(@author.first_name).to eq('Stanley')
    end

    it 'object should have last_name attribute' do
      expect(@author.last_name).to eq('Nnamani')
    end

    it 'object should have no item initially' do
      expect(@author.items.length).to eq(0)
    end
  end
end
