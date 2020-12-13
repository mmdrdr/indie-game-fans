require 'rails_helper'

RSpec.describe 'Favoriteモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { FactoryBot.build(:user) }
    let(:game) { FactoryBot.build(:game) }
    let!(:favorite) { FactoryBot.build(:favorite, user: user, game: game) }

    it "作成できること" do
      expect(favorite.valid?).to eq true
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Gameモデルとの関係' do
      it 'N:1となっている' do
        expect(Favorite.reflect_on_association(:game).macro).to eq :belongs_to
      end
    end
  end
end
