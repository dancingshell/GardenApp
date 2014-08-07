GardenApp2::Application.routes.draw do
  get "photos/index"
  get "photos/new"
  get "photos/show"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resource :session, only: [:new, :create, :destroy]
  # resources :photos

  resources :users 

  resources :plants do
    resources :photos
  end

  resources :gardens do
    resources :plants
  end



  # get "plants/" => "plants#index"

  # get "plants/new" => "plants#new"

  # get "plants/:id" => "plants#show", as: :plant

  # post "plants/" => "plants#create"

  # get "plants/:id/edit" => "plants#edit"

  # patch "plants/:id" => "plants#update"

  # delete "plants/:id" => "plants#destroy"

#######
  get "varieties/" => "varieties#index"

  get "varieties/new" => "varieties#new"

  get "varieties/:id" => "varieties#show", as: :variety

  post "varieties/" => "varieties#create"

  get "varieties/:id/edit" => "varieties#edit"

  patch "varieties/:id" => "varieties#update"

  delete "varieties/:id" => "varieties#destroy"

#######

  # get "gardens/" => "gardens#index"

  # get "gardens/new" => "gardens#new"

  # get "gardens/:id" => "gardens#show", as: :garden

  # post "gardens/" => "gardens#create"

  # get "gardens/:id/edit" => "gardens#edit"

  # patch "gardens/:id" => "gardens#update"

  # delete "gardens/:id" => "gardens#destroy"

#######

  get "seasons/" => "seasons#index"

  get "seasons/new" => "seasons#new"

  get "seasons/:id" => "seasons#show", as: :season

  post "seasons/" => "seasons#create"

  get "seasons/:id/edit" => "seasons#edit"

  patch "seasons/:id" => "seasons#update"

  delete "seasons/:id" => "seasons#destroy"

#######

#   get "users/" => "users#index"

#   get "users/new" => "users#new", as: :new_user

#   get "users/:id" => "users#show", as: :user

#   post "users/" => "users#create"

#   get "users/:id/edit" => "users#edit"

#   patch "users/:id" => "users#update"

#   delete "users/:id" => "users#destroy"

# #######

  get "climates/" => "climates#index"

  get "climates/new" => "climates#new"

  get "climates/:id" => "climates#show", as: :climate

  post "climates/" => "climates#create"

  get "climates/:id/edit" => "climates#edit"

  patch "climates/:id" => "climates#update"

  delete "climates/:id" => "climates#destroy"

  # You can have the root of your site routed with "root"
  root 'sessions#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
