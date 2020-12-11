require 'rails_helper'

RSpec.describe 'Favoriteモデルのテスト', type: :model do
  describe 'アソシエーションのテスト' do
    context 'Gameモデルとの関係' do
      it 'N:1となっている' do
        expect(Favorite.reflect_on_association(:game).macro).to eq :belongs_to
      end
    end
  end
end