require_relative './../game'
require './item'

describe Game do
  before :each do
    @game = Game.new(5, true, 3)
  end

  context 'Test object creation' do
    it 'Confirm that constructor create instance of author object' do
      expect(@game).to be_instance_of(Game)
    end

    it 'throw an error when number of parameter is less than required' do
      -> { Game.new(4) }.should raise_error ArgumentError
    end

    it 'object should throw an error when no parameter is given' do
      -> { Game.new }.should raise_error ArgumentError
    end
  end

  context 'Test methods and attributes' do
    it 'object should have publish_date attribute' do
      expect(@game.publish_date).to eq(5)
    end

    it 'object should have multiplayer attribute' do
      expect(@game.multiplayer).to eq(true)
    end

    it 'object should have last_played_at attribute' do
      expect(@game.last_played_at).to eq(3)
    end
  end
end
