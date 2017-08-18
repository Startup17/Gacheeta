Rails.application.routes.draw do
  resources :lists
  
  
  devise_for :users
  # resources :posts
  root 'home#menu'
  get '/menu' => 'home#menu'
  
  
  #메뉴선택
  get '/taxi' => 'home#taxi'
  get '/car' => 'home#car'
  get '/setting' => 'home#setting'
  
  #택시
  get '/taxi/t_host' => 'home#t_host'
  #get '/taxi/t_guest' => 'home#t_guest'
  #get '/taxi/t_host/t_room' => 'home#t_room'
  #get '/taxi/t_guest/t_match/t_list' => 'home#t_list' 
  #get '/t_match' => 'home#t_match' 
  #post '/lists' => 'lists#index'

  #카풀 
  get '/c_driver' => 'home#c_driver'
  get '/c_boarder' => 'home#c_boarder'
  
 
  
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
