Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :players, except: :destroy do
    resources :events, except: :destroy 
    # do
    #   resources :booking, only: [:index, :new, :create]
    #   resources :canceling, only: [:destroy]
    # end
  end
  resources :players, only: :destroy
  resources :events, only: :destroy
end
