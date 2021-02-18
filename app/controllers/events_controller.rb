class EventsController < ApplicationController
  def new
    @event = Event.new
    # binding.pry
    @player = Player.find(params[:player_id])
  end

  def create
    @event = Event.new(event_params)
    @player = Player.find(params[:player_id])
    @event.player = @player
    @event.user = current_user
    @event.status = "pending"

    redirect_to profile_path and return if @event.save

    render 'new'
  end

  private

  def event_params
    params.require(:event).permit(:title, :descritption, :start_date, :finish_date)
  end
end
