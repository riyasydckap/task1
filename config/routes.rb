Rails.application.routes.draw do
  get 'fetches/box'
  get 'fetches/drop'
  get 'fetches/entitiy'
  get 'fetches/tier'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'home#index'
  get '/products', :to => 'products#index'
  mount ShopifyApp::Engine, at: '/'

  resources :boxes, :drops , :entities

  get '/index', to: 'pages#index', as: 'index'
  get '/order', to: 'pages#order', as: 'order'
  
  #AJAX
  get '/box_click', to: 'boxes#box_click', as: 'box_click'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
