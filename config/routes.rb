Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'mail#new'
  get '/new' => 'mail#new'
  post '/' => 'mail#create'
  resources :mail



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
