Rails.application.routes.draw do
  
  get 'welcome/:user_name', to: 'welcome#index'

  get 'static_page/team', to: 'static_page#team'

  get 'static_page/contact', to: 'static_page#contact'


end