Rails.application.routes.draw do
	root to: 'labs#index'
	resources :scientists
	resources :labs
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
	get '/labs/:id/zerg/new', to: 'zerg#new', as: 'zergs'
	get '/labs/:id/zerg/:specie', to: 'zerg#index' 
	post '/sessions', to: 'sessions#create'
	post '/labs/:id/zerg/new', to: 'zerg#create'
end
