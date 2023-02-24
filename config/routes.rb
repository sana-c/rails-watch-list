Rails.application.routes.draw do


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
    resources :lists, only: [:index, :new, :create, :show] do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: [:destroy]


  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: :list

  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:list_id/bookmarks', to: 'bookmarks#create'
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
