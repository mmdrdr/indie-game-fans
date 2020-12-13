require 'rails_helper'

RSpec.describe 'GameGenreモデルのテスト', type: :model do
  describe 'アソシエーションのテスト' do
    context 'Gameモデルとの関係' do
      it 'N:1となっている' do
        expect(GameGenre.reflect_on_association(:game).macro).to eq :belongs_to
      end
    end
    context 'Genreモデルとの関係' do
      it 'N:1となっている' do
        expect(GameGenre.reflect_on_association(:genre).macro).to eq :belongs_to
      end
    end
  end
end