Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to => 'home#index'

	# resources :event_guests

	resources :events do
		resources :guests, only: [:new,:create]
	end

	resources :guests
	
	resources :students do
		resources :events_students, only: [:new, :create]
	end

	resources :events_students do 
		 resources :students, only: [:destroy]
	end
end
