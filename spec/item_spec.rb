require './item'

describe 'Unit test for items' do
  context 'Testing items' do
    new_item = Item.new('1990-12-11')

    it 'should check for an instance of item' do
      expect(new_item).to be_instance_of(Item)
    end

    it "Date of the created item should be '1990-12-11'" do
      expect(new_item.publish_date).to eql '1990-12-11'
    end

    it "Can be archived method should be true'" do
      expect(new_item.can_be_archived?).to eql true
    end

    it "Move to archive method should be true'" do
      expect(new_item.move_to_archive?).to eql true
    end
  end
end
