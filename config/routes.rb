Rails.application.routes.draw do
	root to: 'scientists#index'
	resources :scientists
end
