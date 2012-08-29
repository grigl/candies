Candies::Application.routes.draw do 
  get "sync/remains"

  get "sync/goods"
  
  get "sync/order"

  get "products/search"

  get '/show_personal_page' => 'home#show_personal_page', as: :show_personal_page
  get '/show_about_page' => 'home#show_about_page', as: :show_about_page

  match '/checkout/back/:state' => 'checkout#back', :as => :back_checkout
  match '/checkout/back_to_address' => 'checkout#back_to_address', :as => :back_to_address
  match '/about' => 'home#about'
  
  match 'pg/:product_group_name/:gender' => 'products#index'
  
  match '/t/*id/:gender' => 'taxons#show', :as => :taxons_search


  post '/new_address' => 'addresses#new_user_address', as: :new_address
  post '/make_address_default' => 'addresses#make_default', as: :make_address_default
  get '/get_address' => 'addresses#get_address'

  match '/admin' => 'admin/products#index', :as => :admin

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
