Rails.application.routes.draw do
  root 'page#index'
  get 'login', to: 'page#login'
  resources :appartment
end
