Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cities do
    resources :shops, only: [:show, :index] do
      resources :events, only: [:new, :create, :delete, :edit]
    end
  end

  resources :shops, only: [:new, :create, :edit, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
