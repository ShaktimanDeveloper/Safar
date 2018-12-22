Rails.application.routes.draw do
  get 'pickup/confirmation'

  get 'pickup/deal' , to: "pickup#deal" , as: 'confirm_deal'
  resources :responders
  resources :providers
  get 'index/home'

  root 'index#home'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
