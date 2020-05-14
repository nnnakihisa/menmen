Rails.application.routes.draw do
  root "menmens#index"
  resources :menmens, only: :index
  resources :abouts, only: :index
  resources :products, only: :index
  resources :informations, only: :index
  resources :companys, only: :index
end
