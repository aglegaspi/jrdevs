Rails.application.routes.draw do
	devise_for :admins, controllers: {
		registrations: 'admins/registrations',
		sessions: 'admins/sessions'
	  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to => 'home#index'

	resources :events do
		resources :guests, only: [:new,:create]
	end

	resources :guests, except: [:new, :create]

	resources :students do
		resources :events_students, only: [:new, :show, :create]
	end

	resources :events_students do 
		 resources :students, only: [:index, :destroy, :edit]
	end

	resources :about, only: [:index]
	resources :events_students, only: [:index, :destroy]


end
