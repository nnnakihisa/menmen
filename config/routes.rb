Rails.application.routes.draw do
  root "menmens#index"
  resources :menmens, only: :index
  resources :abouts, only: :index
  resources :products, only: [:index, :create] do
    collection do
      get 'search'
    end
  end
  resources :informations, only: :index
  resources :companys, only: :index
end
