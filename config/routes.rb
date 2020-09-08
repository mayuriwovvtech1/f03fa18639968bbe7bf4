Rails.application.routes.draw do

	root 'questions#index'
	devise_for :users

	resources :users do
	    resources :questions
	    resources :topics
	end

	resources :questions do
		resources :answers
	end

	resources :follwers
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
