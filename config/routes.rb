Rails.application.routes.draw do
  resources :contents
  resources :courses
  
  root to: 'public#landing'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users

  get 'login', to: 'sessions#new'
  post'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
