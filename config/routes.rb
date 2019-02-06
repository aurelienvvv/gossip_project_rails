Rails.application.routes.draw do

  get 'author/:author_id', to: 'dynamics_pages#user', as: 'author'

  get '/', to: 'dynamics_pages#welcome', as: 'welcome'

  get 'static_page/contact', to: 'static_page#contact'
  
  get 'static_page/team', to: 'static_page#team'

  resources :gossips

end