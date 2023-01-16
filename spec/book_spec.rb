require './book'

describe Book do
    context 'Pass parameters through book class' do
        new_book = Book.new('Abubakar', 'Morrison', archived: true)
        new_book_2 = Book.new('Abubakar', 'bad')
        new_book_3 = Book.new('Abubakar', 'Hello')

        it 'should check for book instance' do
            expect(new_book).to be_instance_of(Book)
        end

        it 'should check for achieve override with new_book' do
            expect(new_book.can_be_archived?).to eql(true)
        end

        it 'should check for cover_state == bad in new_book_2' do
            expect(new_book_2.can_be_archived?).to eql(true)
        end

        it 'should check return default false in new_book_3' do
            expect(new_book_3.can_be_archived?).to eql(false)
        end
    end
end