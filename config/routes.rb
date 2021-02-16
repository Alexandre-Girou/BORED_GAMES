Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show] do
    resources :players, except: :destroy
    resources :events, except: :destroy 
    # do
    #   resources :booking, only: [:index, :new, :create]
    #   resources :canceling, only: [:destroy]
    # end
  end
  resources :players, only: :destroy
  resources :events, only: :destroy
end
