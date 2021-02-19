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
    @event.total_price = @event.duration * @event.player.price

    redirect_to profile_path and return if @event.save

    render 'new'
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(status: params[:event][:status])
      flash[:success] = "Noted!"
      redirect_to profile_path
    else
      flash[:error] = "Wow you're not really good at this, are you?"
      render 'profile'
    end
  end

  def acceptordeny
    @event = Event.find(params[:id])
    @event.update(status: params[:status])
    redirect_to profile_path
  end
  

  # def destroy
  #   @event = Event.find(params[:id])
  #   if @event.status == "refuse"
  #     flash[:success] = 'Bonne route, camarade...'
  #   elsif @event.status == "cancel"
  #     flash[:success] = 'Bonne route, camarade...'
  #   else
  #     flash[:error] = 'Les adieux sont difficiles?'
  #   end
  #   redirect_to root_path
  # end

  private

  def event_params
    params.require(:event).permit(:title, :descritption, :start_date, :finish_date, :duration, :status)
  end
end
