# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
  
#   # Defines the root path route ("/")
#   # root "posts#index"
# end

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # resources :score_categories
  # resources :users
  # resources :score_items
  # resources :scores
  resources :billboard_charts
  resources :billboard_chart_entries
  resources :billboard_tracks
  resources :billboard_artists
  # resources :comets
  # resources :asteroids
  # resources :business_entities

  get 'multi_line_chart' => 'visualizations#multi_line_chart'

  resources :visualizations do
    collection do
      # get 'asteroid_bar_chart'
      # get 'asteroid_pie_chart'
      # get 'asteroid_scatter_plot'
      # get 'psu_data'
      # get 'multi_line_charts'
      # get 'billboard_multi_line_chart'
      # get 'life_expectancy_multi_line_chart'
      # get 'priority_queue'
      # get 'les_miserables'
      # get 'force_directed'
      # get 'force_directed2'
      # get 'graph'
    end
  end
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
