Rails.application.routes.draw do
  get '/home', to: 'staticpages#home'
  get '/help', to: 'staticpages#help'
  get '/about', to: 'staticpages#about'
  get '/contact', to: 'staticpages#contact'
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get 'users/new'
  root 'staticpages#home'



  #get 'alumnos/nuevo'

  get '/alumnos/todos', to: 'alumnos#todos'#solo de ejemplo,cambiar luego segun la seleccion de curso

  #get '/inscribir_alumno', to: 'alumnos#new'

  #post '/inscribir_alumno', to: 'alumnos#create'

  #get '/curso/5',to: 'alumnos#lista' 

  
  get  '/signup',  to: 'users#new'

  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'

  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'

  resources :users, :alumnos


  resources :account_activations, only: [:edit]

  resources :password_resets,     only: [:new, :create, :edit, :update]

end
