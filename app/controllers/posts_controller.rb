class PostsController < ApplicationController
  def index
     users = User.includes(:posts).all
     render json: users, each_serializer: PostsSerializer, root: false
  end

  def create
    user = User.find_by(id: post_params[:user_id])
    if user
      post =  Post.create(post_params)
      if post.valid?
        render json: post, status: 201
      else
        render json: { 'error' => post.errors.messages }, status: 401
      end
    else
      render json: { 'error' => 'User not found' }, status: 404
    end
  end

  private

    def post_params
       params.require(:post).permit(:user_id, :content)
    end
end
