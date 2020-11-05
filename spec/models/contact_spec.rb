require 'rails_helper'

RSpec.describe 'Contactモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:contact) { FactoryBot.create(:contact) }

    context 'nameカラム' do
      it '空欄でないこと' do
        contact.name = ''
        expect(contact.valid?).to eq false;
      end
    end
    context 'emailカラム' do
      it '空欄でないこと' do
        contact.email = ''
        expect(contact.valid?).to eq false;
      end
    end
    context 'contentカラム' do
      it '空欄でないこと' do
        contact.content = ''
        expect(contact.valid?).to eq false;
      end
    end
  end
end