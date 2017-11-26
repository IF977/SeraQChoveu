Rails.application.routes.draw do

  root 'pages#index'
  get    '/entrar',   to: 'sessions#new'
  post   '/entrar',   to: 'sessions#create'
  delete '/sair',  to: 'sessions#destroy'
  get  '/cadastro',  to: 'users#new'
  post '/cadastro', to: 'users#create'
  get '/sobre', to: 'pages#about'
  get '/busca', to: 'pages#busca'
  get '/faleconosco', to: 'contatos#new'
  resources :users
  resources :comentarios
  resources :contatos
  resources :password_resets, only: [:new, :create, :edit, :update]
  get '/cidades', to: 'cidades#index'
end
