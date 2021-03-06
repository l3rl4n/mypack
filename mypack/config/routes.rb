Rails.application.routes.draw do


  # get 'users/new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'
  # root to: 'pages#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'home'      => 'pages#index'
  get 'profile'   => 'sessions#home'
  get 'weight'    => 'pages#weight'
  get 'about'     => 'pages#about'

  get  'sign_up'  => 'users#new'
  post 'sign_up'  => 'users#create'

  get    'login'  => 'sessions#login'
  post   'login'  => 'sessions#login_attempt'
  get    'logout' => 'sessions#logout'
  delete 'logout' => 'sessions#destroy'

  get 'user' => 'pages#index'

  get 'sessions/login'
  get 'sessions/home'
  get 'sessions/profile'
  get 'sessions/setting'
  get 'sessions/new'


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
