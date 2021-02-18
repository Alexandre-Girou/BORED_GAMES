class PlayersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @players = Player.all
    # appeler le user?
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.user = current_user

    if @player.save
      flash[:success] = "Object successfully created"
      redirect_to @player
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @player = Player.find(params[:id])
 #   @user = User.where(params[:id] == @player.user_id )
    @user = @player.user
  end

  def destroy
    @player = Player.find(params[:id])
    if @player.destroy
      flash[:success] = 'Object was successfully deleted.'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to root_path
  end

  private

  def player_params
    params.require(:player).permit(:id, :category, :nickname)
  end
end
