Rails.application.routes.draw do
  resources :eulogies
  resources :life_accounts do
    resources :commitments
  end

  devise_for :users

  authenticated :user do
    root to: 'dashboards#show'
  end

  root to: 'pages#home'
end
