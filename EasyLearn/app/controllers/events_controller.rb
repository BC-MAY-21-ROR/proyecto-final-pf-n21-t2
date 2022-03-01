class EventsController < ApplicationController
  before_action :require_login
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params, sessions[:user_id])
    
    if @event.save
      redirect_to events_path
    else
      render "index"
    end
  end

  def edit
    @event = Event.find(params[:title])
    if @event.update(:title=> params[:title], :description=>params[:description],
      :day=>params[:day],:hour=>params[:hour],
      :link=>params[:link])
      redirect_to events_path
    end
  end

  def events_params
    params.require(:event).permit(:title, :description, :day, :hour, :link)
  end

end
