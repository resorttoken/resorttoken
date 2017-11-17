Rails.application.routes.draw do


  # Home Page
  get 'home/index'
  get 'home/minor'

  # Landing Page
  get 'landing/index'

  # Dashboard Page
  get 'dashboards/dashboard_main'

  #root :to => "home#index"
  root :to => "landing#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
