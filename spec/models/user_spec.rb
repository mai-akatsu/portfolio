require 'rails_helper'

RSpec.describe User, type: :model do
    it "nameを登録すると、nameが取得できること" do
        user = User.new(
            name: "テスト",
        )
        expect(user.name).to eq "テスト"
    end
    it "emailを登録すると、emailが取得できること" do
        user = User.new(
            email: "example@com"
        )
        expect(user.email).to eq "example@com"
    end
    it "passwordを登録すると、passwordが取得できること" do
        user = User.new(
            password: "psword"
        )
        expect(user.password).to eq "psword"
    end
    it "image_nameを登録すると、image_nameが取得できること" do
        user = User.new(
            image_name: "url"
        )
        expect(user.image_name).to eq "url"
    end
end
