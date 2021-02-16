Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :players do 
    resources :events, only: :destroy
  end
  resources :events, except: :destroy 
  resources :users, only: [:index, :show]
end
