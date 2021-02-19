class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @players = @user.players
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
