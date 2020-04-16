Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'articles#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'preview', to: 'articles#preview'

  delete 'logout', to: 'sessions#destroy'

  resources :articles, except: [:index] do
    scope module: :articles do
      resources :loves, only: [:create, :destroy]
    end
  end

  resources :users
  resources :categories, only: [:show]

end
