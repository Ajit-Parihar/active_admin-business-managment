Rails.application.routes.draw do
  resources :sellers
  devise_for :users, controllers: {
     registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
 
  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root "home#index"  

  ActiveAdmin.routes(self)
  
  namespace :admin do 
    resources :products do 
      collection do 
        get :show_category_product 
      end
    end
  end

end

