Rails.application.routes.draw do
  resources :randomthoughts
  resources :users
  root "users#index"
end
