Rails.application.routes.draw do
	resources :tarts do 
		resources :ratings
	end
	root 'tarts#index'
end
