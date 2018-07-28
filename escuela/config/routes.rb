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

  
  get '/notas/semestre/',to: 'nos#index2'
  get 'nos/new/nueva',to:'nos#new2'
  get 'nos/informes_index',to:'nos#informes_index'
  get 'nos/informes_detalle',to:'nos#informes_detalle'
  get'/notas/por_asignatura',to:'nos#notas_alumnos'
  post'/notas/por_asignatura',to:'nos#create'
  get '/notas/edit_nota_al/',to:'nos#edit_nota_al'
  get '/nos/muestra',to:  'nos#muestra_al'
  get '/notas/por_alumno', to: 'nos#index_por_alumno'
  get '/asignaturas/editar'

  get '/alumnos/todos', to: 'alumnos#todos'#solo de ejemplo,cambiar luego segun la seleccion de curso
  
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
