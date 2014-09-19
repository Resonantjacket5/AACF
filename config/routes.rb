Rails.application.routes.draw do
  
 
  

  

  get 'homepage/index'

  resources :carousel_items

  resources :upcoming_events

  get '/large_groups/main', to: 'large_groups#main', as: 'large_group_main'
  
  get '/small_groups/main', to: 'small_groups#main', as: 'small_group_main'
  
  get '/prayer_times/prayer', to: 'prayer_times#prayer', as: 'prayer'

  resources :large_groups

  resources :small_groups
  
  resources :prayer_times
  
  devise_for :users, :path_prefix => 'd'
  resources :users
  
  get 'dashboards/index'
  
  get '/leaders/tabs', to: 'leaders#tabs', as: 'tabs'
  
  get '/static_texts/body', to: 'static_texts#body', as: 'body'
  
  get '/contact', to: 'contacts#new', as: 'contact'
  
  get '/leaders/indexedit', to: 'leaders#indexedit', as: 'indexedit'
  
  resources :leaders do
    get "profile"
  end
  
  resources :static_texts
  
  resources "contacts", only: [:new, :create]
  
  root to: "homepage#index"

  
  
  
  #root 'high_voltage/pages#show', id: 'home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
