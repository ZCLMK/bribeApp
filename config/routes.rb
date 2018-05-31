Rails.application.routes.draw do
  
  resources :event
  get 'creator/:id' => 'event#creator'
  devise_for :users
  get 'users/sign_out' => 'home#index'
  get 'event/:id' => 'event#show'

  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
