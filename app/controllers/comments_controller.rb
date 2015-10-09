class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    if comment.valid?
      render json: comment, status: 201
    else
      render json: { 'error' => comment.errors.messages }, status: 400
    end
  end

  private

    def comment_params
       params.require(:comment).permit(:body, :post_id, :user_id)
    end
end
