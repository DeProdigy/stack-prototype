class  Post < ActiveRecord::Base
  validates :content, presence: true

  has_many :comments
  has_many :views
  belongs_to :user
end
