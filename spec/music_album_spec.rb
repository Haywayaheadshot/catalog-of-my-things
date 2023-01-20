require_relative './../music_album'
require './item'

describe Game do
  before :each do
    @music = MusicAlbum.new('1990-12-11')
  end

  context 'Test object creation' do
    it 'Confirm that constructor create instance of author object' do
      expect(@music).to be_instance_of(MusicAlbum)
    end

    it 'object should throw an error when no parameter is given' do
      -> { MusicAlbum.new }.should raise_error ArgumentError
    end
  end

  context 'Test methods and attributes' do
    it 'object should have publish_date attribute' do
      expect(@music.publish_date).to eq('1990-12-11')
    end

    it 'object should have on_spotify attribute' do
      expect(@music.on_spotify).to eq(false)
    end

    it 'object should overwrite parent method can_be_archived? ' do
      expect(@music.can_be_archived?).to eq(false)
    end
  end
end
