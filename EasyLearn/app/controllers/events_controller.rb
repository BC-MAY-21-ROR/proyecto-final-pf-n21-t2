class EventsController < ApplicationController
  before_action :require_login
  def index
    @events = Event.all
    @cat = Category.all
    
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params)
    @event.user = current_user
      if @event.save
        redirect_to events_path
      else
        render "index"
      end
  end

  def edit
    @event = Event.find(params[:id])
    @event.update(:title=> params[:title], :description=>params[:description],
      :day=>params[:day],:hour=>params[:hour],
      :link=>params[:link],:category_id=>params[:category_id])
      redirect_to events_path
  end

  def delete
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def events_params
    params.require(:event).permit(:title, :description, :day, :hour, :link, :category_id)
  end

end
