Rails.application.routes.draw do

  get 'author/:author_id', to: 'dynamics_pages#user'

  get '/', to: 'dynamics_pages#welcome', as: 'welcome'

  get '/gossip/:gossip_id', to: 'dynamics_pages#gossip'

  get 'static_page/contact', to: 'static_page#contact'
  
  get 'static_page/team', to: 'static_page#team'

end