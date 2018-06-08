Rails.application.routes.draw do
  
  resources :events
  get 'creator/:id' => 'events#creator'
  devise_for :users
  get 'users/sign_out' => 'home#index'
  get 'events/:id' => 'events#show'
  post 'events/:id/subscribe' => 'events#subscribe'

  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
