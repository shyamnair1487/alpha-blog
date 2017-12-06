Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'

resources :articles   #this line gives all the index, create, show, new, edit, destroy, update routes for article(type rails routes)

end
