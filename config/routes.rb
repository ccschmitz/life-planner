Rails.application.routes.draw do
  resources :commitments
  resources :eulogies
  resources :life_accounts

  devise_for :users

  authenticate :user do
    root to: 'dashboards#show'
  end

  root to: 'pages#home'
end
