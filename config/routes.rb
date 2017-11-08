Rails.application.routes.draw do
  get 'home/index'
  get 'home/minor'
  get 'landing/index'
  #root :to => "home#index"
  root :to => "landing#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
