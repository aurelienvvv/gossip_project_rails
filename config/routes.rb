Rails.application.routes.draw do

  get '/', to: 'dynamics_pages#welcome', as: 'welcome'

  get 'static_page/contact', to: 'static_page#contact'
  
  get 'static_page/team', to: 'static_page#team'

  resources :cities
  resources :users
  resources :gossips

end