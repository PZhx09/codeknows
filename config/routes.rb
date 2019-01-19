Rails.application.routes.draw do
  get '/signup', to: 'users#new'

  get '/about', to: 'static_pages#about'

  get '/help', to: 'static_pages#help'

  get '/home', to: 'static_pages#home'

  get 'welcome/index'
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  
  post '/signup', to: 'users#create'
end
