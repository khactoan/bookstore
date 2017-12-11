Rails.application.routes.draw do
  root "books#index"
  devise_for :users
  resources :books
  namespace :admin do
    resources :books
  end
end
