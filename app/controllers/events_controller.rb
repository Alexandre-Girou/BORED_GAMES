class EventsController < ApplicationController
  def new
    @event = Event.new
    @player = Player.find(params[:player_id])
  end

  def create
    @event = Event.new(event_params)
    @event.player = Player.find(params[:id])
    @event.user = current_user
    if @event.save
      flash[:success] = "Event successfully created"
      redirect_to profile_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :descritption, :start_date, :finish_date)
  end
end
