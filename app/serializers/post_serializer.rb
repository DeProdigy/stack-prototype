class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :comments, :views, :updated_at, :created_at
end
