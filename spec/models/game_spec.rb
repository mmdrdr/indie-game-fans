require 'rails_helper'

RSpec.describe 'Gameモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { FactoryBot.create(:user) }
    let!(:game) { FactoryBot.build(:game, user_id: user.id) }

    context 'titleカラム' do
      it '空欄でないこと' do
        game.title = ''
        expect(game.valid?).to eq false;
      end
    end
    context 'introductionカラム' do
      it '空欄でないこと' do
        game.introduction = ''
        expect(game.valid?).to eq false;
      end
      it '200文字以下であること' do
        game.introduction = Faker::Lorem.characters(number:201)
        expect(game.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Game.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end
end