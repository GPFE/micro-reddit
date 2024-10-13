class User < ApplicationRecord
  validates :name, length: { in: 2..12 }, presence: true, uniqueness: true
  has_many :posts
  has_many :comments
end
