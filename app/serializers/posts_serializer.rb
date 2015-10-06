class PostsSerializer < ActiveModel::Serializer
  attributes :id, :username, :posts

  def posts
    object.posts
  end
end
