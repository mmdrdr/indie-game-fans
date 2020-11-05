require 'rails_helper'

RSpec.describe 'Commentモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { FactoryBot.create(:user) }
    let(:game) { FactoryBot.create(:game) }
    let!(:comment) { FactoryBot.build(:comment, user_id: user.id, game_id: game.id) }

    context 'commentカラム' do
      it '空欄でないこと' do
        comment.comment = ''
        expect(contact.valid?).to eq false;
      end
      it '200文字以下であること' do
        comment.comment = Faker::Lorem.characters(number:201)
        expect(game.valid?).to eq false;
      end
    end
  end
end