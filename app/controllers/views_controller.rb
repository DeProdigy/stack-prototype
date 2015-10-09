class ViewsController < ApplicationController
  def create
    view = View.create(view_params)
    if view.valid?
      render json: view, status: 201
    else
      render json: { 'error' => view.errors.messages }, status: 400
    end
  end

  private

    def view_params
       params.require(:view).permit(:post_id, :user_id)
    end
end
