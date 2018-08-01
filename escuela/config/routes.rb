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

  get '/notas/descargar' ,to:'nos#download',format:'docx'
  get '/notas/descargar2' ,to:'nos#download2',format:'pdf'
  get '/notas/descargar3' ,to:'nos#download3',format:'docx'
  get 'notas/informes_index',to:'nos#informes_index'
  get 'notas/informes_detalle',to:'nos#informes_detalle'

  get '/asignaturas/editar'

  get '/alumnos/todos', to: 'alumnos#todos'

  get  '/signup',  to: 'users#new'

  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'

  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'

  resources :users, :alumnos,:nos
  resources :asignaturas 

  
  resources :account_activations, only: [:edit]

  resources :password_resets,     only: [:new, :create, :edit, :update]

end
