Rails.application.routes.draw do
  get '/login',to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end
  get '/edit_architectures/:edit_architecture.id',to: 'edit_architecture#show'
  root to: 'edit_profiles#index'
  resources :edit_profiles, :edit_rooms, :edit_architectures
  resources :architecture_lists, expect: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
