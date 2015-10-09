class PostsSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :updated_at, :created_at
end
