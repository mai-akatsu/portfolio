require 'rails_helper'

RSpec.describe Post, type: :model do
    it "コンテントがきちんと保存されるか" do
        post = Post.new(
            content: "テストです",
        )
        expect(post.content).to eq "テストです"
    end
end
