Rails.application.routes.draw do


  # Home Page
  get 'home/index'

  # Landing Page
  get 'landing/index'

  # Dashboard Page
  get '/dashboards', to: 'dashboards#index'
  get 'marketplace/index'

  get 'assets/index'
  get 'assets/sell'
  get 'assets/rent'
  get 'assets/trade'
  get 'assets/book'

  get 'activity/index'
  get 'activity/buying_history'
  get 'activity/selling_history'
  get 'activity/trading_history'
  get 'activity/booking_history'
  get 'activity/income_history'

  get 'income/index'
  get 'income/referral_cash'
  get 'income/bonus_tokens'
  get 'income/reward_tokens'
  get 'income/invite_and_earn'

  get 'payment/index'
  get 'payment/bank_deposit'
  get 'payment/check_deposit'
  get 'payment/coins_ph'
  get 'payment/skrill'
  get 'payment/wallet'

  get 'helpcenter/index'
  get 'helpcenter/faq'
  get 'helpcenter/contact_us'

  get 'clientprofile/index'
  get 'clientprofile/verification'
  get 'clientprofile/invite_and_earn'
  get 'clientprofile/settings'

  get 'partneradminarea/index'
  get 'partneradminarea/dashboard'
  get 'partneradminarea/list_your_property'
  get 'partneradminarea/reports'
  get 'partneradminarea/invite_and_earn'
  get 'partneradminarea/settings'

  get '/join', to: 'landing#join'
  get '/admin', to: 'dashboards#index'
  #root :to => "home#index"
  root to: 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
