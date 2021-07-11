Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'mail#index'
  get '/new' => 'mail#index'
  post '/' => 'mail#create'
  resources :mail



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
