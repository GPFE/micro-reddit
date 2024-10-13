class Comment < ApplicationRecord
  validates :user_id, :post_id, :content, presence: true
  validates :content, length: { in: 1..120 }

  belongs_to :post
  belongs_to :user
end
