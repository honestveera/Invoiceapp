Rails.application.routes.draw do

  resources :scheduletimes
  resources :calenders
  resources :skillsets
  resources :authorizedusers
  get 'productmasters'=>'productmasters#index'
  post'productmasters' =>'productmasters#create'
  get 'productmasters/:id/edit' =>'productmasters#edit',as:'edit_pm'
  get 'productmasters/:id'=>'productmasters#show',as:'productmaster'
  put 'productmasters/:id'=>'productmasters#update'
  patch 'productmasters/:id'=>'productmasters#update'
  delete 'productmasters/:id'=>'productmasters#destroy'
  resources :yearcreations
  resources :companycreations
  resources :usercreations
  resources :suppliermasters
  resources :customermasters

  #=======Reports Part=============#
  get 'customerrecords' => 'customermasters#customerrecords'
  get 'supplierrecords' => 'suppliermasters#supplierrecords'
  get 'productrecords' => 'productmasters#productrecords'

  #=======login credential=============#
  get 'signout' => 'application#signout'
  get 'checklogin' => 'credentialchecks#login'
  post 'checkcredential' => 'credentialchecks#credential'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'credentialchecks#login'

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
