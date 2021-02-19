class PlayersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    # appeler le user?
    if params[:q].present?
      @players = Player.where(category: params[:q]).order("id DESC")
    else
      @players = Player.all.order("id DESC")
    end
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.user = current_user
    @player.price = 

    if @player.save
      flash[:success] = "Welcome, #{@player.nickname} !"
      redirect_to @player
    else
      flash[:error] = "Hey peasant, you made a mistake.."
      render 'new'
    end
  end

  def show
    @player = Player.find(params[:id])
    @user = @player.user
  end

  def destroy
    @player = Player.find(params[:id])
    if @player.destroy
      flash[:success] = 'Goodbye buddy...'
    else
      flash[:error] = "You don't want to leave us?"
    end
    redirect_to root_path
  end

  private

  def player_params
    params.require(:player).permit(:id, :category, :nickname, :price)
  end
end
