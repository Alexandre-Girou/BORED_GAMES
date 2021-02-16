Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :players do
    resources :events, only: [:new, :create]
  end
  get "/profile", to: 'pages#profile'
end
