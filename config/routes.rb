Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'home#index'
  get '/products', :to => 'products#index'
  mount ShopifyApp::Engine, at: '/'

  resources :boxes, :drops , :entities

  get '/index', to: 'pages#index', as: 'index'
  # get 'boxes/new', to: 'boxes#new', as: 'box_new'
  # post 'boxes/create', to: 'boxes#create', as: 'box_create'
  # get 'boxes/show/:id', to: 'pages#box_show', as: 'box_show'
  # get 'drops/show/:id', to: 'pages#drop_show', as: 'drop_show'
  # get 'entities/new/:drop', to: 'entities#new', as: 'entity_new'
  # get 'drops/new/:box', to: 'drops#new', as: 'drop_new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
