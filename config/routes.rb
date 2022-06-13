Rails.application.routes.draw do
  devise_for :users, path: "backoffice"

  namespace :backoffice do
    resources :users
    root to: "users#index"
  end

  root to: "application#index"
end
