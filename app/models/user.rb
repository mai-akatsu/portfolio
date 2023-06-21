class User < ApplicationRecord
    has_many :posts
    has_many :likes
    
    validates :email, {uniqueness: true}
    validates :password, {presence: true}

    def posts
        return Post.where(user_id: self.id)
    end
end
