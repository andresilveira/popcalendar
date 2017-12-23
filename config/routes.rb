Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }

  authenticated :user do
    root 'users#me', as: :authenticated_root
  end

  resources :users do
    member do
      get 'me'
    end
  end

  root to: 'users#index'
end
