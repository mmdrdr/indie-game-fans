require 'rails_helper'

RSpec.describe 'Gameモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { FactoryBot.build(:user) }
    let!(:game) { FactoryBot.build(:game, user_id: user.id) }

    context 'titleカラム' do
      it '空欄でないこと' do
        game.title = ''
        expect(game.valid?).to eq false
      end
      it '空欄の場合はエラーが表示されること' do
        game.title = ''
        game.valid?
        expect(game.errors[:title]).to include("を入力してください")
      end
    end

    context 'introductionカラム' do
      it '空欄でないこと' do
        game.introduction = ''
        expect(game.valid?).to eq false
      end
      it '空欄の場合はエラーが表示されること' do
        game.introduction = ''
        game.valid?
        expect(game.errors[:introduction]).to include("を入力してください")
      end
      it '200文字以下であること' do
        game.introduction = Faker::Lorem.characters(number: 201)
        expect(game.valid?).to eq false
      end
    end

    context 'game_image' do
      it '空欄でないこと' do
        game.game_image_ids = ''
        expect(game.valid?).to eq false
      end
    end

    context 'game_genre' do
      it '空欄でないこと' do
        game.game_genre_ids = ''
        expect(game.valid?).to eq false
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
