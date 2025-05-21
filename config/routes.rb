Rails.application.routes.draw do
  get 'review/new'
  get 'review/create'
  get 'restaurants/index'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
end
#   Un visiteur peut voir la liste de tous les restaurants.
# GET "restaurants"  #index
# Un visiteur peut ajouter un nouveau restaurant et être redirigé vers la vue show de la page de ce nouveau restaurant.
# GET "restaurants/new"  #new
# POST "restaurants"    #create
# Un visiteur peut voir les détails d’un restaurant, avec tous les avis associés au restaurant.
# GET "restaurants/38"  #show
# Un visiteur peut ajouter un nouvel avis à un restaurant.
# GET "restaurants/38/reviews/new"  #new
# POST "restaurants/38/reviews"    #create
