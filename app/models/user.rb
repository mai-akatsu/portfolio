class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :likes, dependent: :destroy
    
    validates :email, {uniqueness: true}
    validates :password, {presence: true}

    def posts
        return Post.where(user_id: self.id)
    end
end
