class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @player = Player.find(params[:id])
    @players = Player.where(user_id: @user)
  end
end
