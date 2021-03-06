Rails.application.routes.draw do
	# resources :posts
	devise_for :users
	resources :users, only: :show do
		resources :posts
	end

	resources :tags, only: :create do
		collection do
			delete "remove"
		end
	end
	root "static_pages#home"
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
