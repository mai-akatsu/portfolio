class Post < ApplicationRecord
  has_many :likes, dependent: :destroy

  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
  
  def user
    return Post.find_by(id: self.id)
  end
  
end
