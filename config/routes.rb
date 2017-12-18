Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  root "books#index"
  devise_for :users

  resources :books
  resources :comments
  resources :line_items
  resources :carts
  resources :orders

  namespace :admin do
    resources :books
  end
end
