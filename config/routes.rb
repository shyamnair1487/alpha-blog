Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'

	resources :articles   #this line gives all the index, create, show, new, edit, destroy, update routes for article(type rails routes)

	get 'signup', to: 'users#new'
	# post 'users', to: 'users#create'        this is one way to do it, next line shows another 
	resources :users, except: [:new]

	get 'login', to: 'sessions#new'
	post 'login', to: "sessions#create"
	delete 'logout', to: 'sessions#destroy'

	resources :categories, except: [:destroy]

end
