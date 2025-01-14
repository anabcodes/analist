Rails.application.routes.draw do
  devise_for :users
  # get "home/index"

  resources :lists do
    resources :items, only: [:new, :create, :destroy, :update]
  end

  root "home#index"
  
  
  get "up" => "rails/health#show", as: :rails_health_check
end
