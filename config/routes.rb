Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :products, only: [:new, :create, :edit , :update, :destroy ]
  end

  resources :products, only: [:index ,:show] do
    collection do
      get 'manage'
    end
  end
end
