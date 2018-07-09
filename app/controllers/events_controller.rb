class EventsController < ApplicationController
	  skip_before_action :verify_authenticity_token
 	  before_action :find_event, only:[:show, :subscribe, :edit,  :update]
  	before_action :event_params, only:[:create, :edit, :update]
  	before_action :weekend, only:[:index]
  
  def index
    	@users = User.all
		@events = Event.order('date asc')
		@concerts = Event.where(category_id: 1).limit(3)
  end
  
  def show
		@attendees  = @event.attendees.limit(6)
		@other_events_by_creator = Event.where('creator_id' => @event.creator_id).where("id != ?", @event.id).limit(3) #Trois suggestions d'evenements par le même organisateur  
		@maps_api_key = ENV['MAP_API_KEY']
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
	  @events = Event.where(creator_id: @user.id).order('date asc').paginate(:page => params[:page], :per_page => 16)
  end 

  def subscribe
    @event.attendees << current_user
		flash[:notice] = "Vous vous êtes bien inscrit(e) à l'évenement \" #{@event.title } \""
		redirect_to @event 
  end
  
  def category
	 @events = Event.where(category_id: params[:id]).paginate(:page => params[:page], :per_page => 16)
	 @category = Category.find(params[:id])
  end
 #------helpers------

 

 private 		# ------------------------------------------- 
  
  def find_event 
    @event = Event.find(params[:id])
  end
  
  def event_params
    params.require(:event).permit(:title, :description, :address, :date, :time, :category_id, :image,  :image_cache, :remove_image)
  end

  def weekend
	events = Event.all 
	@weekend = []
	events.each do |e|
		if e.date.wday == 6 || e.date.wday ==7
			@weekend << e 
		end 
	end
	@weekend
end 
end


