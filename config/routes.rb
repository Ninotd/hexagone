Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :city do
    resources :shops, only: [:index, :show] do
      resources :events, only: [:new, :create, :delete]
    end
  end

  resources :shops, only: [:new, :create, :edit, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
