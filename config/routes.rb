Rails.application.routes.draw do

  #creating a nested route between products and attachments so that each product post can have multiple images
  resources :products do
    resources :attachments
end


  resources :buyer_products
  resources :products
  resources :sellers
  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"
  resources :profiles
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  #get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#page'






end
