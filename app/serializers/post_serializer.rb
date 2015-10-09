class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :content_type, :user_id, :comments, :views, :updated_at, :created_at
end
