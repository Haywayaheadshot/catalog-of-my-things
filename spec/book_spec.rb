require './book'
require './item'

describe Book do
  context 'Pass parameters through book class' do
    new_book = Book.new('1990-12-11', 'Abubakar', 'good')
    new_book_two = Book.new('1990-12-11', 'Abubakar', 'bad')
    new_book_three = Book.new('1990-12-11', 'Abubakar', 'good')

    it 'should check for book instance' do
      expect(new_book).to be_instance_of(Book)
      expect(new_book_two).to be_instance_of(Book)
      expect(new_book_three).to be_instance_of(Book)
    end

    it 'should check for achieve override with new_book' do
      expect(new_book.can_be_archived?).to eql(true)
    end

    it 'should check for cover_state == bad in new_book_2' do
      expect(new_book_two.can_be_archived?).to eql(true)
    end

    it 'should check return default true in new_book_3' do
      expect(new_book_three.can_be_archived?).to eql(true)
    end

    it 'should check publisher of new_book_three' do
      expect(new_book_three.publisher).to eql('Abubakar')
    end

    it 'should check cover_state of new_book_three' do
      expect(new_book_three.cover_state).to eql('good')
    end
  end
end
