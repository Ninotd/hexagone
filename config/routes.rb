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
      resources :events, only: [:new, :create, :delete, :edit]
    end

  end

  resources :shops, only: [:new, :create, :edit, :delete] do
    resources :users, only: :[] do
      resources :messages, only: [:new, :create]
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
