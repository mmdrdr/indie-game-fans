require 'rails_helper'

RSpec.describe 'Userモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { test_user.valid? }

    let(:user) { build(:user) }

    context 'nameカラム' do
      let(:test_user) { user }

      it '空欄でないこと' do
        test_user.name = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが表示されること' do
        user.name = ''
        user.valid?
        expect(user.errors[:name]).to include("を入力してください")
      end
      it '10文字以下であること' do
        test_user.name = Faker::Lorem.characters(number: 11)
        is_expected.to eq false
      end
      it '10文字以上の場合はエラーが表示されること' do
        test_user.name = Faker::Lorem.characters(number: 11)
        user.valid?
        expect(user.errors[:name]).to include("は10文字以内で入力してください")
      end
    end

    context 'introductionカラム' do
      let(:test_user) { user }

      it '200文字以下であること' do
        test_user.introduction = Faker::Lorem.characters(number: 201)
        is_expected.to eq false
      end
      it '200文字以上の場合はエラーが表示されること' do
        test_user.introduction = Faker::Lorem.characters(number: 201)
        user.valid?
        expect(user.errors[:introduction]).to include("は200文字以内で入力してください")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Gameモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:games).macro).to eq :has_many
      end
    end

    context 'Commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:comments).macro).to eq :has_many
      end
    end

    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
  end
end
