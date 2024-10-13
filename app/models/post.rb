class Post < ApplicationRecord
  validates :content, length: { in: 2..800 }, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :comments
end
