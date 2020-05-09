Rails.application.routes.draw do
  resources :employees
  resources :locations
  resources :departments
  resources :titles

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'

  delete "/logout", to: "sessions#destroy", as: "logout"
  resources :users, only: [:new, :create]

  root 'welcome#home'
end
