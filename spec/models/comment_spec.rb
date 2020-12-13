require 'rails_helper'

RSpec.describe 'Commentモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { FactoryBot.build(:user) }
    let(:game) { FactoryBot.build(:game) }
    let!(:comment) { FactoryBot.build(:comment, user: user, game: game) }

    it "作成できること" do
      expect(comment.valid?).to eq true
    end
    context 'commentカラム' do
      it '空欄でないこと' do
        comment.comment = ""
        expect(comment.valid?).to eq false
      end
      it '200文字以下であること' do
        comment.comment = Faker::Lorem.characters(number: 201)
        expect(comment.valid?).to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Gameモデルとの関係' do
      it 'N:1となっている' do
        expect(Comment.reflect_on_association(:game).macro).to eq :belongs_to
      end
    end
  end
end
