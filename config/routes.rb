Rails.application.routes.draw do
  root 'new_age#index'
  get 'static_pages/index'
  get 'new_age/index'
end
