Rails.application.routes.draw do
  root to: 'events#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/show'
  get 'rsvp/create'

  resources :users
  resources :events
end
