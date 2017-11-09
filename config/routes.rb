Rails.application.routes.draw do

  root 'pages#index'
  get    '/entrar',   to: 'sessions#new'
  post   '/entrar',   to: 'sessions#create'
  delete '/sair',  to: 'sessions#destroy'
  get  '/cadastro',  to: 'users#new'
  post '/cadastro', to: 'users#create'
  get '/editar', to: 'users#edit'
  get '/sobre', to: 'pages#about'
  get '/busca', to: 'pages#busca'
  resources :users
  resources :comentarios
  resources :contatos
end
