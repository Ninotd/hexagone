Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cities do
    collection do
      get 'city', to: "cities#search_city", as: "search"
    end

    collection do
      get 'shops', to: "shops#search_shop", as: "search_shop"
    end

    resources :shops, only: [:show, :index] do
      resources :events, only: [:new, :create, :delete, :edit] do
        resources :calendars, only: :create
      end
      resources :favorites, only: :create
    end
    
    resources :events, only: :index
  end


  resources :shops, only: [] do
    resources :users, only: :[] do
      resources :messages, only: [:new, :create]
    end
  end



  resources :favorites, only: [:index, :destroy]
  resources :calendars, only: [:index, :destroy]
  resources :shops, only: [:new, :create, :edit, :delete]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
