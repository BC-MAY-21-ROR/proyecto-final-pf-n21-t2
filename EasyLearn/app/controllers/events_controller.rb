class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @events = Event.new
  end

  def events_params
    params.permit(:title, :description, :day, :hour, :link)
  end

  def create
    @even = Event.new(events_params)
    if @even2 = Event.find_by(title:params[:title])
      redirect_to events_path, notice: 'You use this title already'
    else
      if @even.save
        redirect_to events_path
      else
        render :new
      end
    end
  end

  def edit
    @even = Event.find(params[:title])
    if @even.update(:title=> params[:title], :description=>params[:description],
      :day=>params[:day],:hour=>params[:hour],
      :link=>params[:link])
      redirect_to events_path
    end
  end

  def disable
    @even = Event.find(params[:id])
    if @even.status == true
      if @even.update(:status=>0)
        redirect_to events_path
      end
    else
      if @even.update(:status=>1)
        redirect_to events_path
      end
    end
  end

end
