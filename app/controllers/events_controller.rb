class EventsController < ApplicationController
	skip_before_action :verify_authenticity_token

  before_action :find_event, only:[:show, :subscribe, :edit,  :update]
  before_action :event_params, only:[:create, :edit, :update]
  
  def index
    @users = User.all
		@events = Event.order('date asc')
		@samedi = "16-06-2018".to_date
		@dimanche =  "17-06-2018".to_date
		@weekend = Event.where(:date => @samedi.beginning_of_day..@dimanche.end_of_day).limit(6)
		@concerts = @events.where(category_id: 1).limit(3)
  end
  
  def show
	@attendees  = @event.attendees 
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

    
  def edit
  end 
  
  def update
    if @event.update(article_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def user_events
    @user = User.find(params[:id])
	@events = Event.where(creator_id: @user.id).order('date asc')
  end 

  def subscribe
    @event.attendees << current_user
    current_user.attended_evts << @event
		flash[:notice] = "Vous vous êtes bien inscrit(e) à l'évenement \" #{@event.title } \""
		redirect_to @event 
  end
  
  def category
    @events = Event.where(category_id: params[:id])
  end


 private 		# ------------------------------------------- 
  
  def find_event 
    @event = Event.find(params[:id])
  end
  
  def event_params
    params.require(:event).permit(:title, :description, :address, :date, :time, :category_id, :image_url, :image,  :image_cache, :remove_image)
  end
end


