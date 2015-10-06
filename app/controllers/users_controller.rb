class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, status: 201
    else
      render json: { 'error' => user.errors.messages }, status: 400
    end
  end

  private

    def user_params
       params.require(:user).permit(:username)
    end
end
