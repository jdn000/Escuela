Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

	root 'staticpages#home'

  get '/home', to: 'staticpages#home'

  get '/help', to: 'staticpages#help'

  get '/about', to: 'staticpages#about'

  get '/contact', to: 'staticpages#contact'
  
  get  '/signup',  to: 'users#new'

  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'

  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'

  resources :users

  resources :account_activations, only: [:edit]

  resources :password_resets,     only: [:new, :create, :edit, :update]

end
