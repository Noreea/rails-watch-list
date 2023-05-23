Rails.application.routes.draw do
  root to: "lists#index"
  resources :bookmarks
  resources :lists
  resources :movies

  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end
# Afficher toutes les listes GET "/lists", to: "lists#index"

# Afficher les détails d'une liste donnée GET "/lists/:id", to: "lists#show"

# Afficher le formulaire de création d'une nouvelle liste GET "/lists/new", to: "lists#new"

# Créer une nouvelle liste POST "/lists", to: "lists#create"
