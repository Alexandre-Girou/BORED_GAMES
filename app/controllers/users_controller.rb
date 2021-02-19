class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_id = @user.id
    @player = Player.find(params[:id])
    @players = Player.where(user_id: @user)
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:success] = 'Bonne route, camarade...'
    else
      flash[:error] = 'Les adieux sont difficiles?'
    end
    redirect_to root_path
  end
end
