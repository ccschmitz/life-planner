Rails.application.routes.draw do
  resources :commitments
  resources :eulogies
  resources :life_accounts

  devise_for :users
end
