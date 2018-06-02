class EventController < ApplicationController
  before_action :find_event, only:[:show]
  before_action :event_params, only:[:create]
  
  def index
    @users = User.all
    @events = Event.all
  end
  
  def show
  end
    
  def new 
    @event = Event.new
  end 
  
  def create 
      @event = Event.new(event_params)
      @event.creator_id = current_user.id
    
        respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Votre évenement a bien été créé' }
      else
        format.html { render :new }
      end
    end
  end 
  
  def creator 
    @creator = User.find(params[:id])
    @events = Event.where(creator_id: @creator.id)
  end 
  
  private 
  
  def find_event 
    @event = Event.find(params[:id])
  end
  
  def event_params
    params.require(:event).permit(:title, :description, :address, :date)
  end

end

