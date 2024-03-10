require 'rails_helper'

RSpec.describe User, type: :model do
    it "ユーザー情報を登録すると、保存されるか" do
        expect(FactoryBot.build(:user)).to be_valid
    end
    it "image_nameを登録すると、image_nameが取得できること" do
        user = User.new(
            image_name: "url"
        )
        expect(user.image_name).to eq "url"
    end
end
