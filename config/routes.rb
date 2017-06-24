Rails.application.routes.draw do
  devise_for :users
  resources :stock_values
  root 'new_age#index'
  get 'static_pages/index'
  get 'new_age/index'
end
