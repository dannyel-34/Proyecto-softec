Rails.application.routes.draw do
  

  get 'cursos/import'

  resources :answers
  resources :questions
  resources :surveys

  resources :estados

  resources :acudientes do
    get :autocomplete_municipio_nombre, :on => :collection
  end

  resources :consultations

  resources :assistances do 
    post :edit_multiple, :on => :collection 
    put :update_multiple, :on => :collection
  end

  resources :horarios

  resources :alumnos do
    get :autocomplete_municipio_nombre, :on => :collection
  end

  resources :cursos do
      resources :grupos
  end

  resources :profesors


  resources :institucions do
      resources :sucursals
  end

  resources :roles

  devise_for :users
  resources :users

  resources :comentarios

  resources :estado_civils
  
  resources :municipios 

  resources :tipo_docs

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/about'
  get 'static_pages/ver'
  get 'static_pages/v2'
  get 'static_pages/v3'
  get 'static_pages/home2'
  get 'static_pages/manual'
  
  match '/home', to: 'static_pages#home',  via: 'get'
  match '/help',	to: 'static_pages#help',  via: 'get'
  match '/about',   to: 'static_pages#about',  via: 'get'
  match '/contact', to: 'static_pages#contact',  via: 'get'
  match '/ver', to: 'static_pages#ver',  via: 'get'
  match '/v2', to: 'static_pages#v2',  via: 'get'
  match '/v3', to: 'static_pages#v3',  via: 'get'
  match '/home2', to: 'static_pages#home2',  via: 'get'
  match '/manual', to: 'static_pages#manual',  via: 'get'
  
  root :to => 'static_pages#home'



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
