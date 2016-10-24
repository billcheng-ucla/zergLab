Rails.application.routes.draw do
	root to: 'labs#index'
	resources :scientists
	resources :labs
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
	get '/labs/:id/zerg', to: 'zerg#index', as: 'zerg'
	get '/labs/:id/zerg/new', to: 'zerg#new', as: 'new_zerg'
	post '/sessions', to: 'sessions#create'
	post '/labs/:id/zerg', to: 'zerg#create'
end
