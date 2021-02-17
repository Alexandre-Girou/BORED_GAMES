class EventsController < ApplicationController
  def new
    @event = Event.new
    @player = Player.find(params[:player_id])
  end

  def create
    # à modifier
    @event = Event.new(event_params)
    @player = Player.find(params[:player_id])
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
