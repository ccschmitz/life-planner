Rails.application.routes.draw do
  resources :eulogies, except: :index
  resources :life_accounts, except: :index do
    resources :commitments, except: :index
  end

  devise_for :users

  authenticated :user do
    root to: 'dashboards#show'
  end

  root to: 'pages#home'
end
