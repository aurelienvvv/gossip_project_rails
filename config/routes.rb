Rails.application.routes.draw do

  get '/', to: 'dynamics_pages#welcome', as: 'welcome'

  get 'static_page/contact', to: 'static_page#contact'
  
  get 'static_page/team', to: 'static_page#team'

  resources :cities
  resources :users
  resources :gossips
  resources :comments
  resources :conversations
  resources :sessions, only: [:new, :create, :destroy]
  resources :private_messages, only: [:show, :new, :create, :destroy, :edit]

  resources :gossips do
  resources :comments
end

end