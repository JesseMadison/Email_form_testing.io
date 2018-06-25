Rails.application.routes.draw do
  resources :seller_buyers
  resources :attachments
  resources :products
  resources :sellers
  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"
  resources :profiles
  devise_for :users

  get 'home/page'
  #get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#page'






end
