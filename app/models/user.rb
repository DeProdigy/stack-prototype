class  User < ActiveRecord::Base
  validates :username, presence: true

  has_many :posts
  has_many :comments, through: :posts
  has_many :views, through: :posts
end
