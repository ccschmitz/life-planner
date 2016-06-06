Rails.application.routes.draw do
  resources :eulogies, except: :index do
    collection do
      get :intro
    end
  end
  resources :life_accounts, except: :index do
    resources :commitments, except: :index

    collection do
      get :intro
    end
  end

  devise_for :users

  authenticated :user do
    root to: 'dashboards#show'
  end

  root to: 'pages#home'
end
