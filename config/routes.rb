Rails.application.routes.draw do
  
	root to: "home#index"
    get 'index', to: 'home#index'

    devise_for :users

    resources :promoters do
    	member do
	      get 'profile'
	    end
	end

	resources :properties
	resources :requests
end
