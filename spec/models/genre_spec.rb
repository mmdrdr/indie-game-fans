require 'rails_helper'

RSpec.describe 'GameGenreモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:game) { FactoryBot.create(:game) }
    let(:genre) { FactoryBot.create(:genre) }
    let!(:game_genre) { FactoryBot.build(:game_genre, game_id: game.id, genre_id: genre.id) }

    context 'game_idカラム' do
      it '空欄でないこと' do
        game_genre.game_id = ''
        expect(game_genre.valid?).to eq false;
      end
    end
    context 'genre_idカラム' do
      it '空欄でないこと' do
        game_genre.genre_id = ''
        expect(game_genre.valid?).to eq false;
      end
    end
  end
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