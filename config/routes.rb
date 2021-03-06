Rails.application.routes.draw do
root 'pages#home'
get 'pages/home', to: 'pages#home'

resources :recipes
get '/signup', to: 'users#new'
resources :users, except: [:new]
resources :heros

get '/login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'
end
