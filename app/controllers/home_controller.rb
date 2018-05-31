class HomeController < ApplicationController
  before_action :find_event, only: [:show]
  def index
    @events_recent = Event.limit(6).order('id desc')
    @user = User.all
  end
  
  def show
  end
    
  def new 
    @event = Event.new
  end 
  
  def create 
  end 
  
  private 
  
  def find_event 
    @event = Event.find(params[:id])
  end
end
