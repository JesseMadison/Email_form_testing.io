Rails.application.routes.draw do
  resources :profiles
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/elephant' => 'people#elephant'
  get 'people/new' => 'people#new'

  get '/people' => 'people#index'
  post '/people' => 'people#create'

end
