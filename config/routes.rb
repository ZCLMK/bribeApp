Rails.application.routes.draw do
  
  root 'home#index'
  
  resources :events
  # Allows for routes such as users/5/events
  devise_for :users
  get 'users/:id/events' => 'events#user_events' , as: :user_events
  get 'users/sign_out' => 'home#index'
  #get 'events/:id' => 'events#show'
  #get 'events/new' => 'events#new'
  get 'events/:id/subscribe' => 'events#subscribe', as: :events_subscribe
  get 'events/category/:id' => "events#category"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
